#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"

// #include "llvm/IR/IntrinsicEnums.inc"

/*
static const char *const intrinsicNames[] = {
};

static int search(const void *p1, const void *p2) {
  const char *s1 = (const char *) p1;
  const char *s2 = *(const char **) p2;
  return strcmp(s1, s2);
}
int GetLLVMIntrinsicIDFromString(const char* str, llvm::Intrinsic::ID& id) {
  void *ptr = bsearch(str, (const void *) intrinsicNames,
    sizeof(intrinsicNames)/sizeof(const char *),
    sizeof(const char *), search);
  if (ptr == NULL)
    return 0;
  id = (llvm::Intrinsic::ID)((((const char**) ptr) - intrinsicNames) + 1);
  return 1;
}
*/



using namespace llvm;

namespace {
  struct CallStack : public ModulePass {
    static char ID;

    CallStack() : ModulePass(ID) {}

    // This function is invoked once at the initialization phase of the compiler
    // The LLVM IR of functions isn't ready at this point
    bool doInitialization(Module &M) override {
      return false;
    }

    // This function is invoked once per function compiled
    // The LLVM IR of the input functions is ready and it can be analyzed and/or transformed
    bool runOnModule(llvm::Module &m) override {

      auto &ctx = m.getContext();

			auto i32ty = IntegerType::get(ctx, 32);
      // create extern function
      std::vector<Type *> args = {Type::getInt8PtrTy(ctx)};
      FunctionType *FT = FunctionType::get(Type::getVoidTy(ctx), args, false);
			auto retaddr_func = llvm::Intrinsic::getDeclaration(&m, Intrinsic::returnaddress, {});
      auto *push_func =
          Function::Create(FunctionType::get(Type::getVoidTy(ctx), args, false), Function::ExternalLinkage, "__push_return_address", m);

      auto *pop_func =
          Function::Create(FunctionType::get(Type::getVoidTy(ctx), {}, false), Function::ExternalLinkage, "__pop_return_address", m);


			for (auto &F : m) {
				auto name = F.getName();
				if (name == "main" || name.startswith("__") || name.startswith("_GLOBAL_")) {
					continue;
				}
				if (!F.empty()) {
					auto &BB = F.front();
					// skipping phis here may be a waste, but who cares :)
					auto *I = BB.getFirstNonPHIOrDbg();
					if (I != NULL) {
						IRBuilder<> builder(I);
						auto ra = builder.CreateCall(retaddr_func->getFunctionType(), retaddr_func, {ConstantInt::get(i32ty, 0, true)});
						builder.CreateCall(push_func->getFunctionType(), push_func, {ra});
					}
				}
				
				// find any returns and prefix them with a pop
				for (auto &BB : F) {
					auto *term = BB.getTerminator();

					if (auto *ret = dyn_cast<ReturnInst>(term); ret != NULL) {
						IRBuilder<> builder(ret);
						builder.CreateCall(pop_func->getFunctionType(), pop_func, {});
					}
				}
			}

      return false;
    }

    // We don't modify the program, so we preserve all analyses.
    // The LLVM IR of functions isn't ready at this point
    void getAnalysisUsage(AnalysisUsage &AU) const override {
      AU.setPreservesAll();
    }
  };
}  // namespace

//
//
// Next there is code to register your pass to "opt"
char CallStack::ID = 0;
static llvm::RegisterPass<CallStack> X("CallStack", "Transformation for seperate call stack");

// Next there is code to register your pass to "clang"
static CallStack *_PassMaker = NULL;
static llvm::RegisterStandardPasses _RegPass1(
    llvm::PassManagerBuilder::EP_OptimizerLast, [](const llvm::PassManagerBuilder &, llvm::legacy::PassManagerBase &PM) {
      if (!_PassMaker) {
        PM.add(_PassMaker = new CallStack());
      }
    });  // ** for -Ox
static llvm::RegisterStandardPasses _RegPass2(
    llvm::PassManagerBuilder::EP_EnabledOnOptLevel0, [](const llvm::PassManagerBuilder &, llvm::legacy::PassManagerBase &PM) {
      if (!_PassMaker) {
        PM.add(_PassMaker = new CallStack());
      }
    });  // ** for -O0
				 //
