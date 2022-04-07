; ModuleID = 'tests/out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Points = type { i64, i32, %struct.Point* }
%struct.Point = type { float, float*, i64, float }
%union.pthread_barrier_t = type { i64, [24 x i8] }
%struct.pkmedian_arg_t = type { %struct.Points*, i64, i64, i64*, i32, %union.pthread_barrier_t* }
%class.PStream = type { i32 (...)** }
%class.SimStream = type { %class.PStream, i64 }
%class.FileStream = type { %class.PStream, %struct._IO_FILE* }

$_ZN9SimStreamC2El = comdat any

$_ZN10FileStreamC2EPc = comdat any

$_ZN7PStreamC2Ev = comdat any

$_ZN7PStreamD2Ev = comdat any

$_ZN10FileStream4readEPfii = comdat any

$_ZN10FileStream6ferrorEv = comdat any

$_ZN10FileStream4feofEv = comdat any

$_ZN10FileStreamD2Ev = comdat any

$_ZN10FileStreamD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN7PStreamD0Ev = comdat any

$_ZN9SimStream4readEPfii = comdat any

$_ZN9SimStream6ferrorEv = comdat any

$_ZN9SimStream4feofEv = comdat any

$_ZN9SimStreamD2Ev = comdat any

$_ZN9SimStreamD0Ev = comdat any

$_ZTV10FileStream = comdat any

$_ZTI10FileStream = comdat any

$_ZTS10FileStream = comdat any

$_ZTI7PStream = comdat any

$_ZTS7PStream = comdat any

$_ZTV7PStream = comdat any

$_ZTV9SimStream = comdat any

$_ZTI9SimStream = comdat any

$_ZTS9SimStream = comdat any

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_streamcluster.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZL5nproc = internal global i32 0, align 4
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs = internal global double* null, align 8
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i = internal global i32 0, align 4
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open = internal global i8 0, align 1
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost = internal global double 0.000000e+00, align 8
@_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem = internal global double* null, align 8
@_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x = internal global double 0.000000e+00, align 8
@_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close = internal global i32 0, align 4
@_ZL9is_center = internal global i8* null, align 8
@_ZL12center_table = internal global i32* null, align 8
@_ZL17switch_membership = internal global i8* null, align 8
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs = internal global double* null, align 8
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k = internal global i64 0, align 8
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible = internal global i32* null, align 8
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"error opening %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lf \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"not enough memory for a chunk!\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"read %d points\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"error reading data!\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"oops! no more space for centers\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"PARSEC Benchmark Suite\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"usage: %s k1 k2 d n chunksize clustersize infile outfile nproc\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"  k1:          Min. number of centers allowed\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"  k2:          Max. number of centers allowed\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"  d:           Dimension of each data point\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"  n:           Number of data points\0A\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"  chunksize:   Number of data points to handle per step\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"  clustersize: Maximum number of intermediate centers\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"  infile:      Input file (if n<=0)\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"  outfile:     Output file\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"  nproc:       Number of threads to use\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [77 x i8] c"if n > 0, points will be randomly generated instead of reading from infile.\0A\00", align 1
@_ZTV10FileStream = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10FileStream to i8*), i8* bitcast (i64 (%class.FileStream*, float*, i32, i32)* @_ZN10FileStream4readEPfii to i8*), i8* bitcast (i32 (%class.FileStream*)* @_ZN10FileStream6ferrorEv to i8*), i8* bitcast (i32 (%class.FileStream*)* @_ZN10FileStream4feofEv to i8*), i8* bitcast (void (%class.FileStream*)* @_ZN10FileStreamD2Ev to i8*), i8* bitcast (void (%class.FileStream*)* @_ZN10FileStreamD0Ev to i8*)] }, comdat, align 8
@.str.23 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"error opening file %s\0A.\00", align 1
@_ZTI10FileStream = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10FileStream, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7PStream to i8*) }, comdat, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"closing file stream\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS10FileStream = linkonce_odr dso_local constant [13 x i8] c"10FileStream\00", comdat, align 1
@_ZTI7PStream = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7PStream, i32 0, i32 0) }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS7PStream = linkonce_odr dso_local constant [9 x i8] c"7PStream\00", comdat, align 1
@_ZTV7PStream = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7PStream to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%class.PStream*)* @_ZN7PStreamD2Ev to i8*), i8* bitcast (void (%class.PStream*)* @_ZN7PStreamD0Ev to i8*)] }, comdat, align 8
@_ZTV9SimStream = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9SimStream to i8*), i8* bitcast (i64 (%class.SimStream*, float*, i32, i32)* @_ZN9SimStream4readEPfii to i8*), i8* bitcast (i32 (%class.SimStream*)* @_ZN9SimStream6ferrorEv to i8*), i8* bitcast (i32 (%class.SimStream*)* @_ZN9SimStream4feofEv to i8*), i8* bitcast (void (%class.SimStream*)* @_ZN9SimStreamD2Ev to i8*), i8* bitcast (void (%class.SimStream*)* @_ZN9SimStreamD0Ev to i8*)] }, comdat, align 8
@_ZTI9SimStream = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS9SimStream, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7PStream to i8*) }, comdat, align 8
@_ZTS9SimStream = linkonce_odr dso_local constant [11 x i8] c"9SimStream\00", comdat, align 1

; Function Attrs: noinline
define internal void @_GLOBAL__sub_I_streamcluster.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: noinline
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline nounwind optnone
define dso_local i32 @_Z11isIdenticalPfS_i(float* %0, float* %1, i32 %2) #4 {
  %4 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %4)
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %37

20:                                               ; preds = %18
  %21 = load float*, float** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fcmp une float %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %32
  br label %11

37:                                               ; preds = %18
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %42

41:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %5, align 4
  call void @__pop_return_address()
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone
define dso_local void @_Z7shuffleP6Points(%struct.Points* %0) #4 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %struct.Points*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Point, align 8
  store %struct.Points* %0, %struct.Points** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %50, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.Points*, %struct.Points** %3, align 8
  %10 = getelementptr inbounds %struct.Points, %struct.Points* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %7
  %15 = call i64 @lrand48() #3
  %16 = load %struct.Points*, %struct.Points** %3, align 8
  %17 = getelementptr inbounds %struct.Points, %struct.Points* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = sub nsw i64 %18, %19
  %21 = srem i64 %15, %20
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %5, align 8
  %24 = load %struct.Points*, %struct.Points** %3, align 8
  %25 = getelementptr inbounds %struct.Points, %struct.Points* %24, i32 0, i32 2
  %26 = load %struct.Point*, %struct.Point** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.Point, %struct.Point* %26, i64 %27
  %29 = bitcast %struct.Point* %6 to i8*
  %30 = bitcast %struct.Point* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 32, i1 false)
  %31 = load %struct.Points*, %struct.Points** %3, align 8
  %32 = getelementptr inbounds %struct.Points, %struct.Points* %31, i32 0, i32 2
  %33 = load %struct.Point*, %struct.Point** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.Point, %struct.Point* %33, i64 %34
  %36 = load %struct.Points*, %struct.Points** %3, align 8
  %37 = getelementptr inbounds %struct.Points, %struct.Points* %36, i32 0, i32 2
  %38 = load %struct.Point*, %struct.Point** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.Point, %struct.Point* %38, i64 %39
  %41 = bitcast %struct.Point* %40 to i8*
  %42 = bitcast %struct.Point* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 32, i1 false)
  %43 = load %struct.Points*, %struct.Points** %3, align 8
  %44 = getelementptr inbounds %struct.Points, %struct.Points* %43, i32 0, i32 2
  %45 = load %struct.Point*, %struct.Point** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.Point, %struct.Point* %45, i64 %46
  %48 = bitcast %struct.Point* %47 to i8*
  %49 = bitcast %struct.Point* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 32, i1 false)
  br label %50

50:                                               ; preds = %14
  %51 = load i64, i64* %4, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %7

53:                                               ; preds = %7
  call void @__pop_return_address()
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @lrand48() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone
define dso_local void @_Z10intshufflePii(i32* %0, i32 %1) #4 {
  %3 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %3)
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = call i64 @lrand48() #3
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = sub nsw i64 %17, %18
  %20 = srem i64 %15, %19
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %14
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %9

41:                                               ; preds = %9
  call void @__pop_return_address()
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local float @_Z4dist5PointS_i(%struct.Point* %0, %struct.Point* %1, i32 %2) #4 {
  %4 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %4)
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %2, i32* %5, align 4
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %42, %3
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Point, %struct.Point* %0, i32 0, i32 1
  %14 = load float*, float** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  %18 = load float, float* %17, align 4
  %19 = getelementptr inbounds %struct.Point, %struct.Point* %1, i32 0, i32 1
  %20 = load float*, float** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fsub float %18, %24
  %26 = getelementptr inbounds %struct.Point, %struct.Point* %0, i32 0, i32 1
  %27 = load float*, float** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = load float, float* %30, align 4
  %32 = getelementptr inbounds %struct.Point, %struct.Point* %1, i32 0, i32 1
  %33 = load float*, float** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fsub float %31, %37
  %39 = fmul float %25, %38
  %40 = load float, float* %7, align 4
  %41 = fadd float %40, %39
  store float %41, float* %7, align 4
  br label %42

42:                                               ; preds = %12
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load float, float* %7, align 4
  call void @__pop_return_address()
  ret float %46
}

; Function Attrs: noinline nounwind optnone
define dso_local float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* %0, float %1, i64* %2, i32 %3, %union.pthread_barrier_t* %4) #4 {
  %6 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %6)
  %7 = alloca %struct.Points*, align 8
  %8 = alloca float, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.pthread_barrier_t*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.Point, align 8
  %18 = alloca %struct.Point, align 8
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.Point, align 8
  %22 = alloca %struct.Point, align 8
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca %struct.Point, align 8
  %27 = alloca %struct.Point, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %7, align 8
  store float %1, float* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store %union.pthread_barrier_t* %4, %union.pthread_barrier_t** %11, align 8
  %31 = load %struct.Points*, %struct.Points** %7, align 8
  %32 = getelementptr inbounds %struct.Points, %struct.Points* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @_ZL5nproc, align 4
  %35 = sext i32 %34 to i64
  %36 = sdiv i64 %33, %35
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %37, %39
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %14, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @_ZL5nproc, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %5
  %49 = load %struct.Points*, %struct.Points** %7, align 8
  %50 = getelementptr inbounds %struct.Points, %struct.Points* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %14, align 8
  br label %52

52:                                               ; preds = %48, %5
  %53 = load i64, i64* %13, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %103, %52
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %14, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %55
  %61 = load %struct.Points*, %struct.Points** %7, align 8
  %62 = getelementptr inbounds %struct.Points, %struct.Points* %61, i32 0, i32 2
  %63 = load %struct.Point*, %struct.Point** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.Point, %struct.Point* %63, i64 %65
  %67 = bitcast %struct.Point* %17 to i8*
  %68 = bitcast %struct.Point* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 32, i1 false)
  %69 = load %struct.Points*, %struct.Points** %7, align 8
  %70 = getelementptr inbounds %struct.Points, %struct.Points* %69, i32 0, i32 2
  %71 = load %struct.Point*, %struct.Point** %70, align 8
  %72 = getelementptr inbounds %struct.Point, %struct.Point* %71, i64 0
  %73 = bitcast %struct.Point* %18 to i8*
  %74 = bitcast %struct.Point* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 32, i1 false)
  %75 = load %struct.Points*, %struct.Points** %7, align 8
  %76 = getelementptr inbounds %struct.Points, %struct.Points* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call float @_Z4dist5PointS_i(%struct.Point* %17, %struct.Point* %18, i32 %77)
  store float %78, float* %16, align 4
  %79 = load float, float* %16, align 4
  %80 = load %struct.Points*, %struct.Points** %7, align 8
  %81 = getelementptr inbounds %struct.Points, %struct.Points* %80, i32 0, i32 2
  %82 = load %struct.Point*, %struct.Point** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.Point, %struct.Point* %82, i64 %84
  %86 = getelementptr inbounds %struct.Point, %struct.Point* %85, i32 0, i32 0
  %87 = load float, float* %86, align 8
  %88 = fmul float %79, %87
  %89 = load %struct.Points*, %struct.Points** %7, align 8
  %90 = getelementptr inbounds %struct.Points, %struct.Points* %89, i32 0, i32 2
  %91 = load %struct.Point*, %struct.Point** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.Point, %struct.Point* %91, i64 %93
  %95 = getelementptr inbounds %struct.Point, %struct.Point* %94, i32 0, i32 3
  store float %88, float* %95, align 8
  %96 = load %struct.Points*, %struct.Points** %7, align 8
  %97 = getelementptr inbounds %struct.Points, %struct.Points* %96, i32 0, i32 2
  %98 = load %struct.Point*, %struct.Point** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.Point, %struct.Point* %98, i64 %100
  %102 = getelementptr inbounds %struct.Point, %struct.Point* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %60
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %55

106:                                              ; preds = %55
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i64*, i64** %9, align 8
  store i64 1, i64* %110, align 8
  %111 = load i32, i32* @_ZL5nproc, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 8, %112
  %114 = call noalias i8* @malloc(i64 %113) #3
  %115 = bitcast i8* %114 to double*
  store double* %115, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %209

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %207, %119
  %121 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.Points*, %struct.Points** %7, align 8
  %124 = getelementptr inbounds %struct.Points, %struct.Points* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %208

128:                                              ; preds = %120
  %129 = load i64, i64* %13, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %204, %128
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %14, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %207

136:                                              ; preds = %131
  %137 = load %struct.Points*, %struct.Points** %7, align 8
  %138 = getelementptr inbounds %struct.Points, %struct.Points* %137, i32 0, i32 2
  %139 = load %struct.Point*, %struct.Point** %138, align 8
  %140 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.Point, %struct.Point* %139, i64 %141
  %143 = bitcast %struct.Point* %21 to i8*
  %144 = bitcast %struct.Point* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 32, i1 false)
  %145 = load %struct.Points*, %struct.Points** %7, align 8
  %146 = getelementptr inbounds %struct.Points, %struct.Points* %145, i32 0, i32 2
  %147 = load %struct.Point*, %struct.Point** %146, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.Point, %struct.Point* %147, i64 %149
  %151 = bitcast %struct.Point* %22 to i8*
  %152 = bitcast %struct.Point* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 32, i1 false)
  %153 = load %struct.Points*, %struct.Points** %7, align 8
  %154 = getelementptr inbounds %struct.Points, %struct.Points* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call float @_Z4dist5PointS_i(%struct.Point* %21, %struct.Point* %22, i32 %155)
  store float %156, float* %20, align 4
  %157 = load float, float* %20, align 4
  %158 = load %struct.Points*, %struct.Points** %7, align 8
  %159 = getelementptr inbounds %struct.Points, %struct.Points* %158, i32 0, i32 2
  %160 = load %struct.Point*, %struct.Point** %159, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.Point, %struct.Point* %160, i64 %162
  %164 = getelementptr inbounds %struct.Point, %struct.Point* %163, i32 0, i32 0
  %165 = load float, float* %164, align 8
  %166 = fmul float %157, %165
  %167 = load %struct.Points*, %struct.Points** %7, align 8
  %168 = getelementptr inbounds %struct.Points, %struct.Points* %167, i32 0, i32 2
  %169 = load %struct.Point*, %struct.Point** %168, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.Point, %struct.Point* %169, i64 %171
  %173 = getelementptr inbounds %struct.Point, %struct.Point* %172, i32 0, i32 3
  %174 = load float, float* %173, align 8
  %175 = fcmp olt float %166, %174
  br i1 %175, label %176, label %203

176:                                              ; preds = %136
  %177 = load float, float* %20, align 4
  %178 = load %struct.Points*, %struct.Points** %7, align 8
  %179 = getelementptr inbounds %struct.Points, %struct.Points* %178, i32 0, i32 2
  %180 = load %struct.Point*, %struct.Point** %179, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.Point, %struct.Point* %180, i64 %182
  %184 = getelementptr inbounds %struct.Point, %struct.Point* %183, i32 0, i32 0
  %185 = load float, float* %184, align 8
  %186 = fmul float %177, %185
  %187 = load %struct.Points*, %struct.Points** %7, align 8
  %188 = getelementptr inbounds %struct.Points, %struct.Points* %187, i32 0, i32 2
  %189 = load %struct.Point*, %struct.Point** %188, align 8
  %190 = load i32, i32* %19, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.Point, %struct.Point* %189, i64 %191
  %193 = getelementptr inbounds %struct.Point, %struct.Point* %192, i32 0, i32 3
  store float %186, float* %193, align 8
  %194 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %195 = sext i32 %194 to i64
  %196 = load %struct.Points*, %struct.Points** %7, align 8
  %197 = getelementptr inbounds %struct.Points, %struct.Points* %196, i32 0, i32 2
  %198 = load %struct.Point*, %struct.Point** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.Point, %struct.Point* %198, i64 %200
  %202 = getelementptr inbounds %struct.Point, %struct.Point* %201, i32 0, i32 2
  store i64 %195, i64* %202, align 8
  br label %203

203:                                              ; preds = %176, %136
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %19, align 4
  br label %131

207:                                              ; preds = %131
  br label %120

208:                                              ; preds = %127
  br label %323

209:                                              ; preds = %116
  store i32 1, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  br label %210

210:                                              ; preds = %319, %209
  %211 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %212 = sext i32 %211 to i64
  %213 = load %struct.Points*, %struct.Points** %7, align 8
  %214 = getelementptr inbounds %struct.Points, %struct.Points* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp slt i64 %212, %215
  br i1 %216, label %217, label %322

217:                                              ; preds = %210
  %218 = call i64 @lrand48() #3
  %219 = sitofp i64 %218 to float
  %220 = fdiv float %219, 0x41E0000000000000
  %221 = load %struct.Points*, %struct.Points** %7, align 8
  %222 = getelementptr inbounds %struct.Points, %struct.Points* %221, i32 0, i32 2
  %223 = load %struct.Point*, %struct.Point** %222, align 8
  %224 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.Point, %struct.Point* %223, i64 %225
  %227 = getelementptr inbounds %struct.Point, %struct.Point* %226, i32 0, i32 3
  %228 = load float, float* %227, align 8
  %229 = load float, float* %8, align 4
  %230 = fdiv float %228, %229
  %231 = fcmp olt float %220, %230
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %23, align 1
  %233 = load i8, i8* %23, align 1
  %234 = trunc i8 %233 to i1
  br i1 %234, label %235, label %318

235:                                              ; preds = %217
  %236 = load i64*, i64** %9, align 8
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %236, align 8
  store i8 1, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  %239 = load i64, i64* %13, align 8
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %24, align 4
  br label %241

241:                                              ; preds = %314, %235
  %242 = load i32, i32* %24, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* %14, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %317

246:                                              ; preds = %241
  %247 = load %struct.Points*, %struct.Points** %7, align 8
  %248 = getelementptr inbounds %struct.Points, %struct.Points* %247, i32 0, i32 2
  %249 = load %struct.Point*, %struct.Point** %248, align 8
  %250 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.Point, %struct.Point* %249, i64 %251
  %253 = bitcast %struct.Point* %26 to i8*
  %254 = bitcast %struct.Point* %252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 %254, i64 32, i1 false)
  %255 = load %struct.Points*, %struct.Points** %7, align 8
  %256 = getelementptr inbounds %struct.Points, %struct.Points* %255, i32 0, i32 2
  %257 = load %struct.Point*, %struct.Point** %256, align 8
  %258 = load i32, i32* %24, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.Point, %struct.Point* %257, i64 %259
  %261 = bitcast %struct.Point* %27 to i8*
  %262 = bitcast %struct.Point* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 32, i1 false)
  %263 = load %struct.Points*, %struct.Points** %7, align 8
  %264 = getelementptr inbounds %struct.Points, %struct.Points* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call float @_Z4dist5PointS_i(%struct.Point* %26, %struct.Point* %27, i32 %265)
  store float %266, float* %25, align 4
  %267 = load float, float* %25, align 4
  %268 = load %struct.Points*, %struct.Points** %7, align 8
  %269 = getelementptr inbounds %struct.Points, %struct.Points* %268, i32 0, i32 2
  %270 = load %struct.Point*, %struct.Point** %269, align 8
  %271 = load i32, i32* %24, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.Point, %struct.Point* %270, i64 %272
  %274 = getelementptr inbounds %struct.Point, %struct.Point* %273, i32 0, i32 0
  %275 = load float, float* %274, align 8
  %276 = fmul float %267, %275
  %277 = load %struct.Points*, %struct.Points** %7, align 8
  %278 = getelementptr inbounds %struct.Points, %struct.Points* %277, i32 0, i32 2
  %279 = load %struct.Point*, %struct.Point** %278, align 8
  %280 = load i32, i32* %24, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.Point, %struct.Point* %279, i64 %281
  %283 = getelementptr inbounds %struct.Point, %struct.Point* %282, i32 0, i32 3
  %284 = load float, float* %283, align 8
  %285 = fcmp olt float %276, %284
  br i1 %285, label %286, label %313

286:                                              ; preds = %246
  %287 = load float, float* %25, align 4
  %288 = load %struct.Points*, %struct.Points** %7, align 8
  %289 = getelementptr inbounds %struct.Points, %struct.Points* %288, i32 0, i32 2
  %290 = load %struct.Point*, %struct.Point** %289, align 8
  %291 = load i32, i32* %24, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.Point, %struct.Point* %290, i64 %292
  %294 = getelementptr inbounds %struct.Point, %struct.Point* %293, i32 0, i32 0
  %295 = load float, float* %294, align 8
  %296 = fmul float %287, %295
  %297 = load %struct.Points*, %struct.Points** %7, align 8
  %298 = getelementptr inbounds %struct.Points, %struct.Points* %297, i32 0, i32 2
  %299 = load %struct.Point*, %struct.Point** %298, align 8
  %300 = load i32, i32* %24, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.Point, %struct.Point* %299, i64 %301
  %303 = getelementptr inbounds %struct.Point, %struct.Point* %302, i32 0, i32 3
  store float %296, float* %303, align 8
  %304 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %305 = sext i32 %304 to i64
  %306 = load %struct.Points*, %struct.Points** %7, align 8
  %307 = getelementptr inbounds %struct.Points, %struct.Points* %306, i32 0, i32 2
  %308 = load %struct.Point*, %struct.Point** %307, align 8
  %309 = load i32, i32* %24, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.Point, %struct.Point* %308, i64 %310
  %312 = getelementptr inbounds %struct.Point, %struct.Point* %311, i32 0, i32 2
  store i64 %305, i64* %312, align 8
  br label %313

313:                                              ; preds = %286, %246
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %24, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %24, align 4
  br label %241

317:                                              ; preds = %241
  store i8 0, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  br label %318

318:                                              ; preds = %317, %217
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  br label %210

322:                                              ; preds = %210
  store i8 1, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  br label %323

323:                                              ; preds = %322, %208
  store i8 0, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  store double 0.000000e+00, double* %28, align 8
  %324 = load i64, i64* %13, align 8
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %29, align 4
  br label %326

326:                                              ; preds = %343, %323
  %327 = load i32, i32* %29, align 4
  %328 = sext i32 %327 to i64
  %329 = load i64, i64* %14, align 8
  %330 = icmp slt i64 %328, %329
  br i1 %330, label %331, label %346

331:                                              ; preds = %326
  %332 = load %struct.Points*, %struct.Points** %7, align 8
  %333 = getelementptr inbounds %struct.Points, %struct.Points* %332, i32 0, i32 2
  %334 = load %struct.Point*, %struct.Point** %333, align 8
  %335 = load i32, i32* %29, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.Point, %struct.Point* %334, i64 %336
  %338 = getelementptr inbounds %struct.Point, %struct.Point* %337, i32 0, i32 3
  %339 = load float, float* %338, align 8
  %340 = fpext float %339 to double
  %341 = load double, double* %28, align 8
  %342 = fadd double %341, %340
  store double %342, double* %28, align 8
  br label %343

343:                                              ; preds = %331
  %344 = load i32, i32* %29, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %29, align 4
  br label %326

346:                                              ; preds = %326
  %347 = load double, double* %28, align 8
  %348 = load double*, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  %349 = load i32, i32* %10, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds double, double* %348, i64 %350
  store double %347, double* %351, align 8
  %352 = load i32, i32* %10, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %379

354:                                              ; preds = %346
  %355 = load float, float* %8, align 4
  %356 = load i64*, i64** %9, align 8
  %357 = load i64, i64* %356, align 8
  %358 = sitofp i64 %357 to float
  %359 = fmul float %355, %358
  %360 = fpext float %359 to double
  store double %360, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8
  store i32 0, i32* %30, align 4
  br label %361

361:                                              ; preds = %373, %354
  %362 = load i32, i32* %30, align 4
  %363 = load i32, i32* @_ZL5nproc, align 4
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %365, label %376

365:                                              ; preds = %361
  %366 = load double*, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  %367 = load i32, i32* %30, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds double, double* %366, i64 %368
  %370 = load double, double* %369, align 8
  %371 = load double, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8
  %372 = fadd double %371, %370
  store double %372, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8
  br label %373

373:                                              ; preds = %365
  %374 = load i32, i32* %30, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %30, align 4
  br label %361

376:                                              ; preds = %361
  %377 = load double*, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  %378 = bitcast double* %377 to i8*
  call void @free(i8* %378) #3
  br label %379

379:                                              ; preds = %376, %346
  %380 = load double, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8
  %381 = fptrunc double %380 to float
  call void @__pop_return_address()
  ret float %381
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local double @_Z5pgainlP6PointsdPliP17pthread_barrier_t(i64 %0, %struct.Points* %1, double %2, i64* %3, i32 %4, %union.pthread_barrier_t* %5) #4 {
  %7 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %7)
  %8 = alloca i64, align 8
  %9 = alloca %struct.Points*, align 8
  %10 = alloca double, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.pthread_barrier_t*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca float, align 4
  %32 = alloca %struct.Point, align 8
  %33 = alloca %struct.Point, align 8
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8, align 1
  %42 = alloca %struct.Point, align 8
  %43 = alloca %struct.Point, align 8
  %44 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store %struct.Points* %1, %struct.Points** %9, align 8
  store double %2, double* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store %union.pthread_barrier_t* %5, %union.pthread_barrier_t** %13, align 8
  %45 = load %struct.Points*, %struct.Points** %9, align 8
  %46 = getelementptr inbounds %struct.Points, %struct.Points* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @_ZL5nproc, align 4
  %49 = sext i32 %48 to i64
  %50 = sdiv i64 %47, %49
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %51, %53
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %14, align 8
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %16, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @_ZL5nproc, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %6
  %63 = load %struct.Points*, %struct.Points** %9, align 8
  %64 = getelementptr inbounds %struct.Points, %struct.Points* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %16, align 8
  br label %66

66:                                               ; preds = %62, %6
  store i32 0, i32* %18, align 4
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 2
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %20, align 4
  %73 = srem i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %20, align 4
  %79 = sdiv i32 %77, %78
  %80 = add nsw i32 %79, 1
  %81 = mul nsw i32 %76, %80
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %75, %66
  %83 = load i32, i32* %19, align 4
  %84 = sub nsw i32 %83, 2
  store i32 %84, i32* %21, align 4
  store double 0.000000e+00, double* %22, align 8
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* @_ZL5nproc, align 4
  %90 = add nsw i32 %89, 1
  %91 = mul nsw i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 8
  %94 = call noalias i8* @malloc(i64 %93) #3
  %95 = bitcast i8* %94 to double*
  store double* %95, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  store double 0.000000e+00, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  store i32 0, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4
  br label %96

96:                                               ; preds = %87, %82
  store i32 0, i32* %23, align 4
  %97 = load i64, i64* %15, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %24, align 4
  br label %99

99:                                               ; preds = %119, %96
  %100 = load i32, i32* %24, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %16, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i8*, i8** @_ZL9is_center, align 8
  %106 = load i32, i32* %24, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = trunc i8 %109 to i1
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load i32, i32* %23, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %23, align 4
  %114 = load i32*, i32** @_ZL12center_table, align 8
  %115 = load i32, i32* %24, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %104
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %24, align 4
  br label %99

122:                                              ; preds = %99
  %123 = load i32, i32* %23, align 4
  %124 = sitofp i32 %123 to double
  %125 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %19, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %125, i64 %129
  store double %124, double* %130, align 8
  %131 = load i32, i32* %12, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %122
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %134

134:                                              ; preds = %158, %133
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* @_ZL5nproc, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %134
  %139 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %140 = load i32, i32* %26, align 4
  %141 = load i32, i32* %19, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %139, i64 %143
  %145 = load double, double* %144, align 8
  %146 = fptosi double %145 to i32
  store i32 %146, i32* %27, align 4
  %147 = load i32, i32* %25, align 4
  %148 = sitofp i32 %147 to double
  %149 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %150 = load i32, i32* %26, align 4
  %151 = load i32, i32* %19, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %149, i64 %153
  store double %148, double* %154, align 8
  %155 = load i32, i32* %27, align 4
  %156 = load i32, i32* %25, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %25, align 4
  br label %158

158:                                              ; preds = %138
  %159 = load i32, i32* %26, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %26, align 4
  br label %134

161:                                              ; preds = %134
  br label %162

162:                                              ; preds = %161, %122
  %163 = load i64, i64* %15, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %28, align 4
  br label %165

165:                                              ; preds = %193, %162
  %166 = load i32, i32* %28, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %16, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %196

170:                                              ; preds = %165
  %171 = load i8*, i8** @_ZL9is_center, align 8
  %172 = load i32, i32* %28, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = trunc i8 %175 to i1
  br i1 %176, label %177, label %192

177:                                              ; preds = %170
  %178 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %19, align 4
  %181 = mul nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %178, i64 %182
  %184 = load double, double* %183, align 8
  %185 = fptosi double %184 to i32
  %186 = load i32*, i32** @_ZL12center_table, align 8
  %187 = load i32, i32* %28, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %185
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %177, %170
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %28, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %28, align 4
  br label %165

196:                                              ; preds = %165
  %197 = load i8*, i8** @_ZL17switch_membership, align 8
  %198 = load i64, i64* %15, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = load i64, i64* %16, align 8
  %201 = load i64, i64* %15, align 8
  %202 = sub nsw i64 %200, %201
  %203 = mul i64 %202, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %199, i8 0, i64 %203, i1 false)
  %204 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %19, align 4
  %207 = mul nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %204, i64 %208
  %210 = bitcast double* %209 to i8*
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %210, i8 0, i64 %213, i1 false)
  %214 = load i32, i32* %12, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %196
  %217 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %218 = load i32, i32* @_ZL5nproc, align 4
  %219 = load i32, i32* %19, align 4
  %220 = mul nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, double* %217, i64 %221
  %223 = bitcast double* %222 to i8*
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = mul i64 %225, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %223, i8 0, i64 %226, i1 false)
  br label %227

227:                                              ; preds = %216, %196
  %228 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %19, align 4
  %231 = mul nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double, double* %228, i64 %232
  store double* %233, double** %29, align 8
  %234 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %235 = load i32, i32* @_ZL5nproc, align 4
  %236 = load i32, i32* %19, align 4
  %237 = mul nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds double, double* %234, i64 %238
  store double* %239, double** %30, align 8
  %240 = load i64, i64* %15, align 8
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %17, align 4
  br label %242

242:                                              ; preds = %323, %227
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = load i64, i64* %16, align 8
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %247, label %326

247:                                              ; preds = %242
  %248 = load %struct.Points*, %struct.Points** %9, align 8
  %249 = getelementptr inbounds %struct.Points, %struct.Points* %248, i32 0, i32 2
  %250 = load %struct.Point*, %struct.Point** %249, align 8
  %251 = load i32, i32* %17, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.Point, %struct.Point* %250, i64 %252
  %254 = bitcast %struct.Point* %32 to i8*
  %255 = bitcast %struct.Point* %253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %254, i8* align 8 %255, i64 32, i1 false)
  %256 = load %struct.Points*, %struct.Points** %9, align 8
  %257 = getelementptr inbounds %struct.Points, %struct.Points* %256, i32 0, i32 2
  %258 = load %struct.Point*, %struct.Point** %257, align 8
  %259 = load i64, i64* %8, align 8
  %260 = getelementptr inbounds %struct.Point, %struct.Point* %258, i64 %259
  %261 = bitcast %struct.Point* %33 to i8*
  %262 = bitcast %struct.Point* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 32, i1 false)
  %263 = load %struct.Points*, %struct.Points** %9, align 8
  %264 = getelementptr inbounds %struct.Points, %struct.Points* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call float @_Z4dist5PointS_i(%struct.Point* %32, %struct.Point* %33, i32 %265)
  %267 = load %struct.Points*, %struct.Points** %9, align 8
  %268 = getelementptr inbounds %struct.Points, %struct.Points* %267, i32 0, i32 2
  %269 = load %struct.Point*, %struct.Point** %268, align 8
  %270 = load i32, i32* %17, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.Point, %struct.Point* %269, i64 %271
  %273 = getelementptr inbounds %struct.Point, %struct.Point* %272, i32 0, i32 0
  %274 = load float, float* %273, align 8
  %275 = fmul float %266, %274
  store float %275, float* %31, align 4
  %276 = load %struct.Points*, %struct.Points** %9, align 8
  %277 = getelementptr inbounds %struct.Points, %struct.Points* %276, i32 0, i32 2
  %278 = load %struct.Point*, %struct.Point** %277, align 8
  %279 = load i32, i32* %17, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.Point, %struct.Point* %278, i64 %280
  %282 = getelementptr inbounds %struct.Point, %struct.Point* %281, i32 0, i32 3
  %283 = load float, float* %282, align 8
  store float %283, float* %34, align 4
  %284 = load float, float* %31, align 4
  %285 = load float, float* %34, align 4
  %286 = fcmp olt float %284, %285
  br i1 %286, label %287, label %298

287:                                              ; preds = %247
  %288 = load i8*, i8** @_ZL17switch_membership, align 8
  %289 = load i32, i32* %17, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  store i8 1, i8* %291, align 1
  %292 = load float, float* %31, align 4
  %293 = load float, float* %34, align 4
  %294 = fsub float %292, %293
  %295 = fpext float %294 to double
  %296 = load double, double* %22, align 8
  %297 = fadd double %296, %295
  store double %297, double* %22, align 8
  br label %322

298:                                              ; preds = %247
  %299 = load %struct.Points*, %struct.Points** %9, align 8
  %300 = getelementptr inbounds %struct.Points, %struct.Points* %299, i32 0, i32 2
  %301 = load %struct.Point*, %struct.Point** %300, align 8
  %302 = load i32, i32* %17, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.Point, %struct.Point* %301, i64 %303
  %305 = getelementptr inbounds %struct.Point, %struct.Point* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %35, align 4
  %308 = load float, float* %34, align 4
  %309 = load float, float* %31, align 4
  %310 = fsub float %308, %309
  %311 = fpext float %310 to double
  %312 = load double*, double** %29, align 8
  %313 = load i32*, i32** @_ZL12center_table, align 8
  %314 = load i32, i32* %35, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds double, double* %312, i64 %318
  %320 = load double, double* %319, align 8
  %321 = fadd double %320, %311
  store double %321, double* %319, align 8
  br label %322

322:                                              ; preds = %298, %287
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %17, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %17, align 4
  br label %242

326:                                              ; preds = %242
  %327 = load i64, i64* %15, align 8
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %36, align 4
  br label %329

329:                                              ; preds = %386, %326
  %330 = load i32, i32* %36, align 4
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* %16, align 8
  %333 = icmp slt i64 %331, %332
  br i1 %333, label %334, label %389

334:                                              ; preds = %329
  %335 = load i8*, i8** @_ZL9is_center, align 8
  %336 = load i32, i32* %36, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %335, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = trunc i8 %339 to i1
  br i1 %340, label %341, label %385

341:                                              ; preds = %334
  %342 = load double, double* %10, align 8
  store double %342, double* %37, align 8
  store i32 0, i32* %38, align 4
  br label %343

343:                                              ; preds = %363, %341
  %344 = load i32, i32* %38, align 4
  %345 = load i32, i32* @_ZL5nproc, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %366

347:                                              ; preds = %343
  %348 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %349 = load i32*, i32** @_ZL12center_table, align 8
  %350 = load i32, i32* %36, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %38, align 4
  %355 = load i32, i32* %19, align 4
  %356 = mul nsw i32 %354, %355
  %357 = add nsw i32 %353, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds double, double* %348, i64 %358
  %360 = load double, double* %359, align 8
  %361 = load double, double* %37, align 8
  %362 = fadd double %361, %360
  store double %362, double* %37, align 8
  br label %363

363:                                              ; preds = %347
  %364 = load i32, i32* %38, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %38, align 4
  br label %343

366:                                              ; preds = %343
  %367 = load double, double* %37, align 8
  %368 = load double*, double** %30, align 8
  %369 = load i32*, i32** @_ZL12center_table, align 8
  %370 = load i32, i32* %36, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds double, double* %368, i64 %374
  store double %367, double* %375, align 8
  %376 = load double, double* %37, align 8
  %377 = fcmp ogt double %376, 0.000000e+00
  br i1 %377, label %378, label %384

378:                                              ; preds = %366
  %379 = load i32, i32* %18, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %18, align 4
  %381 = load double, double* %37, align 8
  %382 = load double, double* %22, align 8
  %383 = fsub double %382, %381
  store double %383, double* %22, align 8
  br label %384

384:                                              ; preds = %378, %366
  br label %385

385:                                              ; preds = %384, %334
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %36, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %36, align 4
  br label %329

389:                                              ; preds = %329
  %390 = load i32, i32* %18, align 4
  %391 = sitofp i32 %390 to double
  %392 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* %19, align 4
  %395 = mul nsw i32 %393, %394
  %396 = load i32, i32* %21, align 4
  %397 = add nsw i32 %395, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds double, double* %392, i64 %398
  store double %391, double* %399, align 8
  %400 = load double, double* %22, align 8
  %401 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %402 = load i32, i32* %12, align 4
  %403 = load i32, i32* %19, align 4
  %404 = mul nsw i32 %402, %403
  %405 = load i32, i32* %21, align 4
  %406 = add nsw i32 %404, %405
  %407 = add nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds double, double* %401, i64 %408
  store double %400, double* %409, align 8
  %410 = load i32, i32* %12, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %447

412:                                              ; preds = %389
  %413 = load double, double* %10, align 8
  store double %413, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  store i32 0, i32* %39, align 4
  br label %414

414:                                              ; preds = %443, %412
  %415 = load i32, i32* %39, align 4
  %416 = load i32, i32* @_ZL5nproc, align 4
  %417 = icmp slt i32 %415, %416
  br i1 %417, label %418, label %446

418:                                              ; preds = %414
  %419 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %420 = load i32, i32* %39, align 4
  %421 = load i32, i32* %19, align 4
  %422 = mul nsw i32 %420, %421
  %423 = load i32, i32* %21, align 4
  %424 = add nsw i32 %422, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds double, double* %419, i64 %425
  %427 = load double, double* %426, align 8
  %428 = fptosi double %427 to i32
  %429 = load i32, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4
  %430 = add nsw i32 %429, %428
  store i32 %430, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4
  %431 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %432 = load i32, i32* %39, align 4
  %433 = load i32, i32* %19, align 4
  %434 = mul nsw i32 %432, %433
  %435 = load i32, i32* %21, align 4
  %436 = add nsw i32 %434, %435
  %437 = add nsw i32 %436, 1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds double, double* %431, i64 %438
  %440 = load double, double* %439, align 8
  %441 = load double, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  %442 = fadd double %441, %440
  store double %442, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  br label %443

443:                                              ; preds = %418
  %444 = load i32, i32* %39, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %39, align 4
  br label %414

446:                                              ; preds = %414
  br label %447

447:                                              ; preds = %446, %389
  %448 = load double, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  %449 = fcmp olt double %448, 0.000000e+00
  br i1 %449, label %450, label %592

450:                                              ; preds = %447
  %451 = load i64, i64* %15, align 8
  %452 = trunc i64 %451 to i32
  store i32 %452, i32* %40, align 4
  br label %453

453:                                              ; preds = %530, %450
  %454 = load i32, i32* %40, align 4
  %455 = sext i32 %454 to i64
  %456 = load i64, i64* %16, align 8
  %457 = icmp slt i64 %455, %456
  br i1 %457, label %458, label %533

458:                                              ; preds = %453
  %459 = load double*, double** %30, align 8
  %460 = load i32*, i32** @_ZL12center_table, align 8
  %461 = load %struct.Points*, %struct.Points** %9, align 8
  %462 = getelementptr inbounds %struct.Points, %struct.Points* %461, i32 0, i32 2
  %463 = load %struct.Point*, %struct.Point** %462, align 8
  %464 = load i32, i32* %40, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.Point, %struct.Point* %463, i64 %465
  %467 = getelementptr inbounds %struct.Point, %struct.Point* %466, i32 0, i32 2
  %468 = load i64, i64* %467, align 8
  %469 = getelementptr inbounds i32, i32* %460, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds double, double* %459, i64 %471
  %473 = load double, double* %472, align 8
  %474 = fcmp ogt double %473, 0.000000e+00
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %41, align 1
  %476 = load i8*, i8** @_ZL17switch_membership, align 8
  %477 = load i32, i32* %40, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %476, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = trunc i8 %480 to i1
  br i1 %481, label %485, label %482

482:                                              ; preds = %458
  %483 = load i8, i8* %41, align 1
  %484 = trunc i8 %483 to i1
  br i1 %484, label %485, label %529

485:                                              ; preds = %482, %458
  %486 = load %struct.Points*, %struct.Points** %9, align 8
  %487 = getelementptr inbounds %struct.Points, %struct.Points* %486, i32 0, i32 2
  %488 = load %struct.Point*, %struct.Point** %487, align 8
  %489 = load i32, i32* %40, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.Point, %struct.Point* %488, i64 %490
  %492 = getelementptr inbounds %struct.Point, %struct.Point* %491, i32 0, i32 0
  %493 = load float, float* %492, align 8
  %494 = load %struct.Points*, %struct.Points** %9, align 8
  %495 = getelementptr inbounds %struct.Points, %struct.Points* %494, i32 0, i32 2
  %496 = load %struct.Point*, %struct.Point** %495, align 8
  %497 = load i32, i32* %40, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.Point, %struct.Point* %496, i64 %498
  %500 = bitcast %struct.Point* %42 to i8*
  %501 = bitcast %struct.Point* %499 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %500, i8* align 8 %501, i64 32, i1 false)
  %502 = load %struct.Points*, %struct.Points** %9, align 8
  %503 = getelementptr inbounds %struct.Points, %struct.Points* %502, i32 0, i32 2
  %504 = load %struct.Point*, %struct.Point** %503, align 8
  %505 = load i64, i64* %8, align 8
  %506 = getelementptr inbounds %struct.Point, %struct.Point* %504, i64 %505
  %507 = bitcast %struct.Point* %43 to i8*
  %508 = bitcast %struct.Point* %506 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %507, i8* align 8 %508, i64 32, i1 false)
  %509 = load %struct.Points*, %struct.Points** %9, align 8
  %510 = getelementptr inbounds %struct.Points, %struct.Points* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 8
  %512 = call float @_Z4dist5PointS_i(%struct.Point* %42, %struct.Point* %43, i32 %511)
  %513 = fmul float %493, %512
  %514 = load %struct.Points*, %struct.Points** %9, align 8
  %515 = getelementptr inbounds %struct.Points, %struct.Points* %514, i32 0, i32 2
  %516 = load %struct.Point*, %struct.Point** %515, align 8
  %517 = load i32, i32* %40, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.Point, %struct.Point* %516, i64 %518
  %520 = getelementptr inbounds %struct.Point, %struct.Point* %519, i32 0, i32 3
  store float %513, float* %520, align 8
  %521 = load i64, i64* %8, align 8
  %522 = load %struct.Points*, %struct.Points** %9, align 8
  %523 = getelementptr inbounds %struct.Points, %struct.Points* %522, i32 0, i32 2
  %524 = load %struct.Point*, %struct.Point** %523, align 8
  %525 = load i32, i32* %40, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.Point, %struct.Point* %524, i64 %526
  %528 = getelementptr inbounds %struct.Point, %struct.Point* %527, i32 0, i32 2
  store i64 %521, i64* %528, align 8
  br label %529

529:                                              ; preds = %485, %482
  br label %530

530:                                              ; preds = %529
  %531 = load i32, i32* %40, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %40, align 4
  br label %453

533:                                              ; preds = %453
  %534 = load i64, i64* %15, align 8
  %535 = trunc i64 %534 to i32
  store i32 %535, i32* %44, align 4
  br label %536

536:                                              ; preds = %565, %533
  %537 = load i32, i32* %44, align 4
  %538 = sext i32 %537 to i64
  %539 = load i64, i64* %16, align 8
  %540 = icmp slt i64 %538, %539
  br i1 %540, label %541, label %568

541:                                              ; preds = %536
  %542 = load i8*, i8** @_ZL9is_center, align 8
  %543 = load i32, i32* %44, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, i8* %542, i64 %544
  %546 = load i8, i8* %545, align 1
  %547 = trunc i8 %546 to i1
  br i1 %547, label %548, label %564

548:                                              ; preds = %541
  %549 = load double*, double** %30, align 8
  %550 = load i32*, i32** @_ZL12center_table, align 8
  %551 = load i32, i32* %44, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32, i32* %550, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds double, double* %549, i64 %555
  %557 = load double, double* %556, align 8
  %558 = fcmp ogt double %557, 0.000000e+00
  br i1 %558, label %559, label %564

559:                                              ; preds = %548
  %560 = load i8*, i8** @_ZL9is_center, align 8
  %561 = load i32, i32* %44, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i8, i8* %560, i64 %562
  store i8 0, i8* %563, align 1
  br label %564

564:                                              ; preds = %559, %548, %541
  br label %565

565:                                              ; preds = %564
  %566 = load i32, i32* %44, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %44, align 4
  br label %536

568:                                              ; preds = %536
  %569 = load i64, i64* %8, align 8
  %570 = load i64, i64* %15, align 8
  %571 = icmp sge i64 %569, %570
  br i1 %571, label %572, label %580

572:                                              ; preds = %568
  %573 = load i64, i64* %8, align 8
  %574 = load i64, i64* %16, align 8
  %575 = icmp slt i64 %573, %574
  br i1 %575, label %576, label %580

576:                                              ; preds = %572
  %577 = load i8*, i8** @_ZL9is_center, align 8
  %578 = load i64, i64* %8, align 8
  %579 = getelementptr inbounds i8, i8* %577, i64 %578
  store i8 1, i8* %579, align 1
  br label %580

580:                                              ; preds = %576, %572, %568
  %581 = load i32, i32* %12, align 4
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %591

583:                                              ; preds = %580
  %584 = load i64*, i64** %11, align 8
  %585 = load i64, i64* %584, align 8
  %586 = add nsw i64 %585, 1
  %587 = load i32, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4
  %588 = sext i32 %587 to i64
  %589 = sub nsw i64 %586, %588
  %590 = load i64*, i64** %11, align 8
  store i64 %589, i64* %590, align 8
  br label %591

591:                                              ; preds = %583, %580
  br label %597

592:                                              ; preds = %447
  %593 = load i32, i32* %12, align 4
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %592
  store double 0.000000e+00, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  br label %596

596:                                              ; preds = %595, %592
  br label %597

597:                                              ; preds = %596, %591
  %598 = load i32, i32* %12, align 4
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %603

600:                                              ; preds = %597
  %601 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %602 = bitcast double* %601 to i8*
  call void @free(i8* %602) #3
  br label %603

603:                                              ; preds = %600, %597
  %604 = load double, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  %605 = fneg double %604
  call void @__pop_return_address()
  ret double %605
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone
define dso_local float @_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t(%struct.Points* %0, i32* %1, i32 %2, float %3, i64* %4, double %5, i64 %6, float %7, i32 %8, %union.pthread_barrier_t* %9) #4 {
  %11 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %11)
  %12 = alloca %struct.Points*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i64*, align 8
  %17 = alloca double, align 8
  %18 = alloca i64, align 8
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca %union.pthread_barrier_t*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca double, align 8
  %25 = alloca i64, align 8
  store %struct.Points* %0, %struct.Points** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store float %3, float* %15, align 4
  store i64* %4, i64** %16, align 8
  store double %5, double* %17, align 8
  store i64 %6, i64* %18, align 8
  store float %7, float* %19, align 4
  store i32 %8, i32* %20, align 4
  store %union.pthread_barrier_t* %9, %union.pthread_barrier_t** %21, align 8
  %26 = load double, double* %17, align 8
  store double %26, double* %24, align 8
  br label %27

27:                                               ; preds = %71, %10
  %28 = load double, double* %24, align 8
  %29 = load double, double* %17, align 8
  %30 = fdiv double %28, %29
  %31 = load float, float* %19, align 4
  %32 = fpext float %31 to double
  %33 = fmul double 1.000000e+00, %32
  %34 = fcmp ogt double %30, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %27
  store double 0.000000e+00, double* %24, align 8
  %36 = load %struct.Points*, %struct.Points** %12, align 8
  %37 = getelementptr inbounds %struct.Points, %struct.Points* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %25, align 8
  %39 = load i32, i32* %20, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %14, align 4
  call void @_Z10intshufflePii(i32* %42, i32 %43)
  br label %44

44:                                               ; preds = %41, %35
  store i64 0, i64* %22, align 8
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i64, i64* %22, align 8
  %47 = load i64, i64* %18, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load i64, i64* %22, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = srem i64 %50, %52
  store i64 %53, i64* %23, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i64, i64* %23, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.Points*, %struct.Points** %12, align 8
  %60 = load float, float* %15, align 4
  %61 = fpext float %60 to double
  %62 = load i64*, i64** %16, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %21, align 8
  %65 = call double @_Z5pgainlP6PointsdPliP17pthread_barrier_t(i64 %58, %struct.Points* %59, double %61, i64* %62, i32 %63, %union.pthread_barrier_t* %64)
  %66 = load double, double* %24, align 8
  %67 = fadd double %66, %65
  store double %67, double* %24, align 8
  br label %68

68:                                               ; preds = %49
  %69 = load i64, i64* %22, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %22, align 8
  br label %45

71:                                               ; preds = %45
  %72 = load double, double* %24, align 8
  %73 = load double, double* %17, align 8
  %74 = fsub double %73, %72
  store double %74, double* %17, align 8
  br label %27

75:                                               ; preds = %27
  %76 = load double, double* %17, align 8
  %77 = fptrunc double %76 to float
  call void @__pop_return_address()
  ret float %77
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @_Z19selectfeasible_fastP6PointsPPiiiP17pthread_barrier_t(%struct.Points* %0, i32** %1, i32 %2, i32 %3, %union.pthread_barrier_t* %4) #4 {
  %6 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %6)
  %7 = alloca i32, align 4
  %8 = alloca %struct.Points*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.pthread_barrier_t*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %union.pthread_barrier_t* %4, %union.pthread_barrier_t** %12, align 8
  %25 = load %struct.Points*, %struct.Points** %8, align 8
  %26 = getelementptr inbounds %struct.Points, %struct.Points* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = sitofp i32 %29 to double
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 3, %31
  %33 = sitofp i32 %32 to double
  %34 = load i32, i32* %10, align 4
  %35 = sitofp i32 %34 to double
  %36 = call double @log(double %35) #3
  %37 = fmul double %33, %36
  %38 = fcmp ogt double %30, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %5
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 3, %40
  %42 = sitofp i32 %41 to double
  %43 = load i32, i32* %10, align 4
  %44 = sitofp i32 %43 to double
  %45 = call double @log(double %44) #3
  %46 = fmul double %42, %45
  %47 = fptosi double %46 to i32
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %39, %5
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = call noalias i8* @malloc(i64 %51) #3
  %53 = bitcast i8* %52 to i32*
  %54 = load i32**, i32*** %9, align 8
  store i32* %53, i32** %54, align 8
  store i64 0, i64* %16, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %17, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.Points*, %struct.Points** %8, align 8
  %60 = getelementptr inbounds %struct.Points, %struct.Points* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %48
  %64 = load i64, i64* %16, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %22, align 4
  br label %66

66:                                               ; preds = %78, %63
  %67 = load i32, i32* %22, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %17, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i32, i32* %22, align 4
  %73 = load i32**, i32*** %9, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %22, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %22, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %22, align 4
  br label %66

81:                                               ; preds = %66
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %7, align 4
  br label %202

83:                                               ; preds = %48
  %84 = load %struct.Points*, %struct.Points** %8, align 8
  %85 = getelementptr inbounds %struct.Points, %struct.Points* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = mul i64 4, %86
  %88 = call noalias i8* @malloc(i64 %87) #3
  %89 = bitcast i8* %88 to float*
  store float* %89, float** %14, align 8
  %90 = load %struct.Points*, %struct.Points** %8, align 8
  %91 = getelementptr inbounds %struct.Points, %struct.Points* %90, i32 0, i32 2
  %92 = load %struct.Point*, %struct.Point** %91, align 8
  %93 = getelementptr inbounds %struct.Point, %struct.Point* %92, i64 0
  %94 = getelementptr inbounds %struct.Point, %struct.Point* %93, i32 0, i32 0
  %95 = load float, float* %94, align 8
  %96 = load float*, float** %14, align 8
  %97 = getelementptr inbounds float, float* %96, i64 0
  store float %95, float* %97, align 4
  store float 0.000000e+00, float* %15, align 4
  store i32 1, i32* %23, align 4
  br label %98

98:                                               ; preds = %125, %83
  %99 = load i32, i32* %23, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.Points*, %struct.Points** %8, align 8
  %102 = getelementptr inbounds %struct.Points, %struct.Points* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %98
  %106 = load float*, float** %14, align 8
  %107 = load i32, i32* %23, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %106, i64 %109
  %111 = load float, float* %110, align 4
  %112 = load %struct.Points*, %struct.Points** %8, align 8
  %113 = getelementptr inbounds %struct.Points, %struct.Points* %112, i32 0, i32 2
  %114 = load %struct.Point*, %struct.Point** %113, align 8
  %115 = load i32, i32* %23, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.Point, %struct.Point* %114, i64 %116
  %118 = getelementptr inbounds %struct.Point, %struct.Point* %117, i32 0, i32 0
  %119 = load float, float* %118, align 8
  %120 = fadd float %111, %119
  %121 = load float*, float** %14, align 8
  %122 = load i32, i32* %23, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  store float %120, float* %124, align 4
  br label %125

125:                                              ; preds = %105
  %126 = load i32, i32* %23, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %23, align 4
  br label %98

128:                                              ; preds = %98
  %129 = load float*, float** %14, align 8
  %130 = load %struct.Points*, %struct.Points** %8, align 8
  %131 = getelementptr inbounds %struct.Points, %struct.Points* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, 1
  %134 = getelementptr inbounds float, float* %129, i64 %133
  %135 = load float, float* %134, align 4
  store float %135, float* %15, align 4
  %136 = load i64, i64* %16, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %24, align 4
  br label %138

138:                                              ; preds = %195, %128
  %139 = load i32, i32* %24, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %17, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %198

143:                                              ; preds = %138
  %144 = call i64 @lrand48() #3
  %145 = sitofp i64 %144 to float
  %146 = fdiv float %145, 0x41E0000000000000
  %147 = load float, float* %15, align 4
  %148 = fmul float %146, %147
  store float %148, float* %18, align 4
  store i32 0, i32* %19, align 4
  %149 = load %struct.Points*, %struct.Points** %8, align 8
  %150 = getelementptr inbounds %struct.Points, %struct.Points* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, 1
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %20, align 4
  %154 = load float*, float** %14, align 8
  %155 = getelementptr inbounds float, float* %154, i64 0
  %156 = load float, float* %155, align 4
  %157 = load float, float* %18, align 4
  %158 = fcmp ogt float %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %143
  %160 = load i32**, i32*** %9, align 8
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %24, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 0, i32* %164, align 4
  br label %195

165:                                              ; preds = %143
  br label %166

166:                                              ; preds = %187, %165
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* %20, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %166
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %20, align 4
  %174 = add nsw i32 %172, %173
  %175 = sdiv i32 %174, 2
  store i32 %175, i32* %21, align 4
  %176 = load float*, float** %14, align 8
  %177 = load i32, i32* %21, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %176, i64 %178
  %180 = load float, float* %179, align 4
  %181 = load float, float* %18, align 4
  %182 = fcmp ogt float %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %171
  %184 = load i32, i32* %21, align 4
  store i32 %184, i32* %20, align 4
  br label %187

185:                                              ; preds = %171
  %186 = load i32, i32* %21, align 4
  store i32 %186, i32* %19, align 4
  br label %187

187:                                              ; preds = %185, %183
  br label %166

188:                                              ; preds = %166
  %189 = load i32, i32* %20, align 4
  %190 = load i32**, i32*** %9, align 8
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %24, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %189, i32* %194, align 4
  br label %195

195:                                              ; preds = %188, %159
  %196 = load i32, i32* %24, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %24, align 4
  br label %138

198:                                              ; preds = %138
  %199 = load float*, float** %14, align 8
  %200 = bitcast float* %199 to i8*
  call void @free(i8* %200) #3
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %198, %81
  %203 = load i32, i32* %7, align 4
  call void @__pop_return_address()
  ret i32 %203
}

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: noinline nounwind optnone
define dso_local float @_Z8pkmedianP6PointsllPliP17pthread_barrier_t(%struct.Points* %0, i64 %1, i64 %2, i64* %3, i32 %4, %union.pthread_barrier_t* %5) #4 {
  %7 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %7)
  %8 = alloca float, align 4
  %9 = alloca %struct.Points*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.pthread_barrier_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca double, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.Point, align 8
  %29 = alloca %struct.Point, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store %union.pthread_barrier_t* %5, %union.pthread_barrier_t** %14, align 8
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load i32, i32* @_ZL5nproc, align 4
  %37 = sext i32 %36 to i64
  %38 = call noalias i8* @calloc(i64 %37, i64 8) #3
  %39 = bitcast i8* %38 to double*
  store double* %39, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  br label %40

40:                                               ; preds = %35, %6
  store double 0.000000e+00, double* %19, align 8
  store double 0.000000e+00, double* %18, align 8
  %41 = load %struct.Points*, %struct.Points** %9, align 8
  %42 = getelementptr inbounds %struct.Points, %struct.Points* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %21, align 8
  %44 = load %struct.Points*, %struct.Points** %9, align 8
  %45 = getelementptr inbounds %struct.Points, %struct.Points* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %22, align 8
  %48 = load %struct.Points*, %struct.Points** %9, align 8
  %49 = getelementptr inbounds %struct.Points, %struct.Points* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @_ZL5nproc, align 4
  %52 = sext i32 %51 to i64
  %53 = sdiv i64 %50, %52
  store i64 %53, i64* %23, align 8
  %54 = load i64, i64* %23, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %54, %56
  store i64 %57, i64* %24, align 8
  %58 = load i64, i64* %24, align 8
  %59 = load i64, i64* %23, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %25, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @_ZL5nproc, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %40
  %66 = load %struct.Points*, %struct.Points** %9, align 8
  %67 = getelementptr inbounds %struct.Points, %struct.Points* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %25, align 8
  br label %69

69:                                               ; preds = %65, %40
  store double 0.000000e+00, double* %26, align 8
  %70 = load i64, i64* %24, align 8
  store i64 %70, i64* %27, align 8
  br label %71

71:                                               ; preds = %103, %69
  %72 = load i64, i64* %27, align 8
  %73 = load i64, i64* %25, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = load %struct.Points*, %struct.Points** %9, align 8
  %77 = getelementptr inbounds %struct.Points, %struct.Points* %76, i32 0, i32 2
  %78 = load %struct.Point*, %struct.Point** %77, align 8
  %79 = load i64, i64* %27, align 8
  %80 = getelementptr inbounds %struct.Point, %struct.Point* %78, i64 %79
  %81 = bitcast %struct.Point* %28 to i8*
  %82 = bitcast %struct.Point* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 32, i1 false)
  %83 = load %struct.Points*, %struct.Points** %9, align 8
  %84 = getelementptr inbounds %struct.Points, %struct.Points* %83, i32 0, i32 2
  %85 = load %struct.Point*, %struct.Point** %84, align 8
  %86 = getelementptr inbounds %struct.Point, %struct.Point* %85, i64 0
  %87 = bitcast %struct.Point* %29 to i8*
  %88 = bitcast %struct.Point* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 32, i1 false)
  %89 = load i64, i64* %22, align 8
  %90 = trunc i64 %89 to i32
  %91 = call float @_Z4dist5PointS_i(%struct.Point* %28, %struct.Point* %29, i32 %90)
  %92 = load %struct.Points*, %struct.Points** %9, align 8
  %93 = getelementptr inbounds %struct.Points, %struct.Points* %92, i32 0, i32 2
  %94 = load %struct.Point*, %struct.Point** %93, align 8
  %95 = load i64, i64* %27, align 8
  %96 = getelementptr inbounds %struct.Point, %struct.Point* %94, i64 %95
  %97 = getelementptr inbounds %struct.Point, %struct.Point* %96, i32 0, i32 0
  %98 = load float, float* %97, align 8
  %99 = fmul float %91, %98
  %100 = fpext float %99 to double
  %101 = load double, double* %26, align 8
  %102 = fadd double %101, %100
  store double %102, double* %26, align 8
  br label %103

103:                                              ; preds = %75
  %104 = load i64, i64* %27, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %27, align 8
  br label %71

106:                                              ; preds = %71
  %107 = load double, double* %26, align 8
  %108 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %108, i64 %110
  store double %107, double* %111, align 8
  store i32 0, i32* %30, align 4
  br label %112

112:                                              ; preds = %124, %106
  %113 = load i32, i32* %30, align 4
  %114 = load i32, i32* @_ZL5nproc, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %118 = load i32, i32* %30, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %117, i64 %119
  %121 = load double, double* %120, align 8
  %122 = load double, double* %18, align 8
  %123 = fadd double %122, %121
  store double %123, double* %18, align 8
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %30, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %30, align 4
  br label %112

127:                                              ; preds = %112
  store double 0.000000e+00, double* %19, align 8
  %128 = load double, double* %18, align 8
  %129 = load double, double* %19, align 8
  %130 = fadd double %128, %129
  %131 = fdiv double %130, 2.000000e+00
  store double %131, double* %20, align 8
  %132 = load %struct.Points*, %struct.Points** %9, align 8
  %133 = getelementptr inbounds %struct.Points, %struct.Points* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = icmp sle i64 %134, %135
  br i1 %136, label %137, label %171

137:                                              ; preds = %127
  %138 = load i64, i64* %24, align 8
  store i64 %138, i64* %31, align 8
  br label %139

139:                                              ; preds = %157, %137
  %140 = load i64, i64* %31, align 8
  %141 = load i64, i64* %25, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i64, i64* %31, align 8
  %145 = load %struct.Points*, %struct.Points** %9, align 8
  %146 = getelementptr inbounds %struct.Points, %struct.Points* %145, i32 0, i32 2
  %147 = load %struct.Point*, %struct.Point** %146, align 8
  %148 = load i64, i64* %31, align 8
  %149 = getelementptr inbounds %struct.Point, %struct.Point* %147, i64 %148
  %150 = getelementptr inbounds %struct.Point, %struct.Point* %149, i32 0, i32 2
  store i64 %144, i64* %150, align 8
  %151 = load %struct.Points*, %struct.Points** %9, align 8
  %152 = getelementptr inbounds %struct.Points, %struct.Points* %151, i32 0, i32 2
  %153 = load %struct.Point*, %struct.Point** %152, align 8
  %154 = load i64, i64* %31, align 8
  %155 = getelementptr inbounds %struct.Point, %struct.Point* %153, i64 %154
  %156 = getelementptr inbounds %struct.Point, %struct.Point* %155, i32 0, i32 3
  store float 0.000000e+00, float* %156, align 8
  br label %157

157:                                              ; preds = %143
  %158 = load i64, i64* %31, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %31, align 8
  br label %139

160:                                              ; preds = %139
  store double 0.000000e+00, double* %16, align 8
  %161 = load i32, i32* %13, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %165 = bitcast double* %164 to i8*
  call void @free(i8* %165) #3
  %166 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %167 = load i64*, i64** %12, align 8
  store i64 %166, i64* %167, align 8
  br label %168

168:                                              ; preds = %163, %160
  %169 = load double, double* %16, align 8
  %170 = fptrunc double %169 to float
  store float %170, float* %8, align 4
  br label %391

171:                                              ; preds = %127
  %172 = load i32, i32* %13, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load %struct.Points*, %struct.Points** %9, align 8
  call void @_Z7shuffleP6Points(%struct.Points* %175)
  br label %176

176:                                              ; preds = %174, %171
  %177 = load %struct.Points*, %struct.Points** %9, align 8
  %178 = load double, double* %20, align 8
  %179 = fptrunc double %178 to float
  %180 = load i32, i32* %13, align 4
  %181 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %14, align 8
  %182 = call float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* %177, float %179, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 %180, %union.pthread_barrier_t* %181)
  %183 = fpext float %182 to double
  store double %183, double* %16, align 8
  store i32 0, i32* %15, align 4
  br label %184

184:                                              ; preds = %193, %176
  %185 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %186 = load i64, i64* %10, align 8
  %187 = icmp slt i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* %15, align 4
  %190 = icmp slt i32 %189, 1
  br label %191

191:                                              ; preds = %188, %184
  %192 = phi i1 [ false, %184 ], [ %190, %188 ]
  br i1 %192, label %193, label %203

193:                                              ; preds = %191
  %194 = load %struct.Points*, %struct.Points** %9, align 8
  %195 = load double, double* %20, align 8
  %196 = fptrunc double %195 to float
  %197 = load i32, i32* %13, align 4
  %198 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %14, align 8
  %199 = call float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* %194, float %196, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 %197, %union.pthread_barrier_t* %198)
  %200 = fpext float %199 to double
  store double %200, double* %16, align 8
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %184

203:                                              ; preds = %191
  br label %204

204:                                              ; preds = %222, %203
  %205 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %206 = load i64, i64* %10, align 8
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %208, label %232

208:                                              ; preds = %204
  %209 = load i32, i32* %15, align 4
  %210 = icmp sge i32 %209, 1
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load double, double* %20, align 8
  store double %212, double* %18, align 8
  %213 = load double, double* %18, align 8
  %214 = load double, double* %19, align 8
  %215 = fadd double %213, %214
  %216 = fdiv double %215, 2.000000e+00
  store double %216, double* %20, align 8
  store i32 0, i32* %15, align 4
  br label %217

217:                                              ; preds = %211, %208
  %218 = load i32, i32* %13, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load %struct.Points*, %struct.Points** %9, align 8
  call void @_Z7shuffleP6Points(%struct.Points* %221)
  br label %222

222:                                              ; preds = %220, %217
  %223 = load %struct.Points*, %struct.Points** %9, align 8
  %224 = load double, double* %20, align 8
  %225 = fptrunc double %224 to float
  %226 = load i32, i32* %13, align 4
  %227 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %14, align 8
  %228 = call float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* %223, float %225, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 %226, %union.pthread_barrier_t* %227)
  %229 = fpext float %228 to double
  store double %229, double* %16, align 8
  %230 = load i32, i32* %15, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %15, align 4
  br label %204

232:                                              ; preds = %204
  %233 = load i32, i32* %13, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %264

235:                                              ; preds = %232
  %236 = load %struct.Points*, %struct.Points** %9, align 8
  %237 = load i64, i64* %10, align 8
  %238 = trunc i64 %237 to i32
  %239 = load i32, i32* %13, align 4
  %240 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %14, align 8
  %241 = call i32 @_Z19selectfeasible_fastP6PointsPPiiiP17pthread_barrier_t(%struct.Points* %236, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, i32 %238, i32 %239, %union.pthread_barrier_t* %240)
  store i32 %241, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4
  store i32 0, i32* %32, align 4
  br label %242

242:                                              ; preds = %260, %235
  %243 = load i32, i32* %32, align 4
  %244 = sext i32 %243 to i64
  %245 = load %struct.Points*, %struct.Points** %9, align 8
  %246 = getelementptr inbounds %struct.Points, %struct.Points* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp slt i64 %244, %247
  br i1 %248, label %249, label %263

249:                                              ; preds = %242
  %250 = load i8*, i8** @_ZL9is_center, align 8
  %251 = load %struct.Points*, %struct.Points** %9, align 8
  %252 = getelementptr inbounds %struct.Points, %struct.Points* %251, i32 0, i32 2
  %253 = load %struct.Point*, %struct.Point** %252, align 8
  %254 = load i32, i32* %32, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.Point, %struct.Point* %253, i64 %255
  %257 = getelementptr inbounds %struct.Point, %struct.Point* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds i8, i8* %250, i64 %258
  store i8 1, i8* %259, align 1
  br label %260

260:                                              ; preds = %249
  %261 = load i32, i32* %32, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %32, align 4
  br label %242

263:                                              ; preds = %242
  br label %264

264:                                              ; preds = %263, %232
  br label %265

265:                                              ; preds = %377, %264
  %266 = load double, double* %16, align 8
  store double %266, double* %17, align 8
  %267 = load %struct.Points*, %struct.Points** %9, align 8
  %268 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8
  %269 = load i32, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4
  %270 = load double, double* %20, align 8
  %271 = fptrunc double %270 to float
  %272 = load double, double* %16, align 8
  %273 = load i64, i64* %11, align 8
  %274 = mul nsw i64 3, %273
  %275 = sitofp i64 %274 to double
  %276 = load i64, i64* %11, align 8
  %277 = sitofp i64 %276 to double
  %278 = call double @log(double %277) #3
  %279 = fmul double %275, %278
  %280 = fptosi double %279 to i64
  %281 = load i32, i32* %13, align 4
  %282 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %14, align 8
  %283 = call float @_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t(%struct.Points* %267, i32* %268, i32 %269, float %271, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, double %272, i64 %280, float 0x3FB99999A0000000, i32 %281, %union.pthread_barrier_t* %282)
  %284 = fpext float %283 to double
  store double %284, double* %16, align 8
  %285 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %286 = sitofp i64 %285 to double
  %287 = load i64, i64* %11, align 8
  %288 = sitofp i64 %287 to double
  %289 = fmul double 1.100000e+00, %288
  %290 = fcmp ole double %286, %289
  br i1 %290, label %291, label %298

291:                                              ; preds = %265
  %292 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %293 = sitofp i64 %292 to double
  %294 = load i64, i64* %10, align 8
  %295 = sitofp i64 %294 to double
  %296 = fmul double 9.000000e-01, %295
  %297 = fcmp oge double %293, %296
  br i1 %297, label %308, label %298

298:                                              ; preds = %291, %265
  %299 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %300 = load i64, i64* %11, align 8
  %301 = add nsw i64 %300, 2
  %302 = icmp sle i64 %299, %301
  br i1 %302, label %303, label %327

303:                                              ; preds = %298
  %304 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %305 = load i64, i64* %10, align 8
  %306 = sub nsw i64 %305, 2
  %307 = icmp sge i64 %304, %306
  br i1 %307, label %308, label %327

308:                                              ; preds = %303, %291
  %309 = load %struct.Points*, %struct.Points** %9, align 8
  %310 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8
  %311 = load i32, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4
  %312 = load double, double* %20, align 8
  %313 = fptrunc double %312 to float
  %314 = load double, double* %16, align 8
  %315 = load i64, i64* %11, align 8
  %316 = mul nsw i64 3, %315
  %317 = sitofp i64 %316 to double
  %318 = load i64, i64* %11, align 8
  %319 = sitofp i64 %318 to double
  %320 = call double @log(double %319) #3
  %321 = fmul double %317, %320
  %322 = fptosi double %321 to i64
  %323 = load i32, i32* %13, align 4
  %324 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %14, align 8
  %325 = call float @_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t(%struct.Points* %309, i32* %310, i32 %311, float %313, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, double %314, i64 %322, float 0x3F50624DE0000000, i32 %323, %union.pthread_barrier_t* %324)
  %326 = fpext float %325 to double
  store double %326, double* %16, align 8
  br label %327

327:                                              ; preds = %308, %303, %298
  %328 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %329 = load i64, i64* %11, align 8
  %330 = icmp sgt i64 %328, %329
  br i1 %330, label %331, label %345

331:                                              ; preds = %327
  %332 = load double, double* %20, align 8
  store double %332, double* %19, align 8
  %333 = load double, double* %18, align 8
  %334 = load double, double* %19, align 8
  %335 = fadd double %333, %334
  %336 = fdiv double %335, 2.000000e+00
  store double %336, double* %20, align 8
  %337 = load double, double* %20, align 8
  %338 = load double, double* %19, align 8
  %339 = fsub double %337, %338
  %340 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %341 = sitofp i64 %340 to double
  %342 = fmul double %339, %341
  %343 = load double, double* %16, align 8
  %344 = fadd double %343, %342
  store double %344, double* %16, align 8
  br label %345

345:                                              ; preds = %331, %327
  %346 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %347 = load i64, i64* %10, align 8
  %348 = icmp slt i64 %346, %347
  br i1 %348, label %349, label %363

349:                                              ; preds = %345
  %350 = load double, double* %20, align 8
  store double %350, double* %18, align 8
  %351 = load double, double* %18, align 8
  %352 = load double, double* %19, align 8
  %353 = fadd double %351, %352
  %354 = fdiv double %353, 2.000000e+00
  store double %354, double* %20, align 8
  %355 = load double, double* %20, align 8
  %356 = load double, double* %18, align 8
  %357 = fsub double %355, %356
  %358 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %359 = sitofp i64 %358 to double
  %360 = fmul double %357, %359
  %361 = load double, double* %16, align 8
  %362 = fadd double %361, %360
  store double %362, double* %16, align 8
  br label %363

363:                                              ; preds = %349, %345
  %364 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %365 = load i64, i64* %11, align 8
  %366 = icmp sle i64 %364, %365
  br i1 %366, label %367, label %371

367:                                              ; preds = %363
  %368 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %369 = load i64, i64* %10, align 8
  %370 = icmp sge i64 %368, %369
  br i1 %370, label %376, label %371

371:                                              ; preds = %367, %363
  %372 = load double, double* %19, align 8
  %373 = load double, double* %18, align 8
  %374 = fmul double 0x3FEFF7CED916872B, %373
  %375 = fcmp oge double %372, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %371, %367
  br label %378

377:                                              ; preds = %371
  br label %265

378:                                              ; preds = %376
  %379 = load i32, i32* %13, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %378
  %382 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8
  %383 = bitcast i32* %382 to i8*
  call void @free(i8* %383) #3
  %384 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %385 = bitcast double* %384 to i8*
  call void @free(i8* %385) #3
  %386 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %387 = load i64*, i64** %12, align 8
  store i64 %386, i64* %387, align 8
  br label %388

388:                                              ; preds = %381, %378
  %389 = load double, double* %16, align 8
  %390 = fptrunc double %389 to float
  store float %390, float* %8, align 4
  br label %391

391:                                              ; preds = %388, %168
  %392 = load float, float* %8, align 4
  call void @__pop_return_address()
  ret float %392
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind optnone
define dso_local i32 @_Z11contcentersP6Points(%struct.Points* %0) #4 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %struct.Points*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca float, align 4
  store %struct.Points* %0, %struct.Points** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %139, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.Points*, %struct.Points** %3, align 8
  %10 = getelementptr inbounds %struct.Points, %struct.Points* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %142

13:                                               ; preds = %7
  %14 = load %struct.Points*, %struct.Points** %3, align 8
  %15 = getelementptr inbounds %struct.Points, %struct.Points* %14, i32 0, i32 2
  %16 = load %struct.Point*, %struct.Point** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %16, i64 %17
  %19 = getelementptr inbounds %struct.Point, %struct.Point* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %138

23:                                               ; preds = %13
  %24 = load %struct.Points*, %struct.Points** %3, align 8
  %25 = getelementptr inbounds %struct.Points, %struct.Points* %24, i32 0, i32 2
  %26 = load %struct.Point*, %struct.Point** %25, align 8
  %27 = load %struct.Points*, %struct.Points** %3, align 8
  %28 = getelementptr inbounds %struct.Points, %struct.Points* %27, i32 0, i32 2
  %29 = load %struct.Point*, %struct.Point** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.Point, %struct.Point* %29, i64 %30
  %32 = getelementptr inbounds %struct.Point, %struct.Point* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.Point, %struct.Point* %26, i64 %33
  %35 = getelementptr inbounds %struct.Point, %struct.Point* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  %37 = load %struct.Points*, %struct.Points** %3, align 8
  %38 = getelementptr inbounds %struct.Points, %struct.Points* %37, i32 0, i32 2
  %39 = load %struct.Point*, %struct.Point** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.Point, %struct.Point* %39, i64 %40
  %42 = getelementptr inbounds %struct.Point, %struct.Point* %41, i32 0, i32 0
  %43 = load float, float* %42, align 8
  %44 = fadd float %36, %43
  store float %44, float* %6, align 4
  %45 = load %struct.Points*, %struct.Points** %3, align 8
  %46 = getelementptr inbounds %struct.Points, %struct.Points* %45, i32 0, i32 2
  %47 = load %struct.Point*, %struct.Point** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.Point, %struct.Point* %47, i64 %48
  %50 = getelementptr inbounds %struct.Point, %struct.Point* %49, i32 0, i32 0
  %51 = load float, float* %50, align 8
  %52 = load float, float* %6, align 4
  %53 = fdiv float %51, %52
  store float %53, float* %6, align 4
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %113, %23
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.Points*, %struct.Points** %3, align 8
  %57 = getelementptr inbounds %struct.Points, %struct.Points* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %61, label %116

61:                                               ; preds = %54
  %62 = load float, float* %6, align 4
  %63 = fpext float %62 to double
  %64 = fsub double 1.000000e+00, %63
  %65 = load %struct.Points*, %struct.Points** %3, align 8
  %66 = getelementptr inbounds %struct.Points, %struct.Points* %65, i32 0, i32 2
  %67 = load %struct.Point*, %struct.Point** %66, align 8
  %68 = load %struct.Points*, %struct.Points** %3, align 8
  %69 = getelementptr inbounds %struct.Points, %struct.Points* %68, i32 0, i32 2
  %70 = load %struct.Point*, %struct.Point** %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.Point, %struct.Point* %70, i64 %71
  %73 = getelementptr inbounds %struct.Point, %struct.Point* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.Point, %struct.Point* %67, i64 %74
  %76 = getelementptr inbounds %struct.Point, %struct.Point* %75, i32 0, i32 1
  %77 = load float*, float** %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds float, float* %77, i64 %78
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  %82 = fmul double %81, %64
  %83 = fptrunc double %82 to float
  store float %83, float* %79, align 4
  %84 = load %struct.Points*, %struct.Points** %3, align 8
  %85 = getelementptr inbounds %struct.Points, %struct.Points* %84, i32 0, i32 2
  %86 = load %struct.Point*, %struct.Point** %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds %struct.Point, %struct.Point* %86, i64 %87
  %89 = getelementptr inbounds %struct.Point, %struct.Point* %88, i32 0, i32 1
  %90 = load float*, float** %89, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds float, float* %90, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float, float* %6, align 4
  %95 = fmul float %93, %94
  %96 = load %struct.Points*, %struct.Points** %3, align 8
  %97 = getelementptr inbounds %struct.Points, %struct.Points* %96, i32 0, i32 2
  %98 = load %struct.Point*, %struct.Point** %97, align 8
  %99 = load %struct.Points*, %struct.Points** %3, align 8
  %100 = getelementptr inbounds %struct.Points, %struct.Points* %99, i32 0, i32 2
  %101 = load %struct.Point*, %struct.Point** %100, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds %struct.Point, %struct.Point* %101, i64 %102
  %104 = getelementptr inbounds %struct.Point, %struct.Point* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.Point, %struct.Point* %98, i64 %105
  %107 = getelementptr inbounds %struct.Point, %struct.Point* %106, i32 0, i32 1
  %108 = load float*, float** %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds float, float* %108, i64 %109
  %111 = load float, float* %110, align 4
  %112 = fadd float %111, %95
  store float %112, float* %110, align 4
  br label %113

113:                                              ; preds = %61
  %114 = load i64, i64* %5, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %5, align 8
  br label %54

116:                                              ; preds = %54
  %117 = load %struct.Points*, %struct.Points** %3, align 8
  %118 = getelementptr inbounds %struct.Points, %struct.Points* %117, i32 0, i32 2
  %119 = load %struct.Point*, %struct.Point** %118, align 8
  %120 = load i64, i64* %4, align 8
  %121 = getelementptr inbounds %struct.Point, %struct.Point* %119, i64 %120
  %122 = getelementptr inbounds %struct.Point, %struct.Point* %121, i32 0, i32 0
  %123 = load float, float* %122, align 8
  %124 = load %struct.Points*, %struct.Points** %3, align 8
  %125 = getelementptr inbounds %struct.Points, %struct.Points* %124, i32 0, i32 2
  %126 = load %struct.Point*, %struct.Point** %125, align 8
  %127 = load %struct.Points*, %struct.Points** %3, align 8
  %128 = getelementptr inbounds %struct.Points, %struct.Points* %127, i32 0, i32 2
  %129 = load %struct.Point*, %struct.Point** %128, align 8
  %130 = load i64, i64* %4, align 8
  %131 = getelementptr inbounds %struct.Point, %struct.Point* %129, i64 %130
  %132 = getelementptr inbounds %struct.Point, %struct.Point* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.Point, %struct.Point* %126, i64 %133
  %135 = getelementptr inbounds %struct.Point, %struct.Point* %134, i32 0, i32 0
  %136 = load float, float* %135, align 8
  %137 = fadd float %136, %123
  store float %137, float* %135, align 8
  br label %138

138:                                              ; preds = %116, %13
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %4, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %4, align 8
  br label %7

142:                                              ; preds = %7
  call void @__pop_return_address()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone
define dso_local void @_Z11copycentersP6PointsS0_Pll(%struct.Points* %0, %struct.Points* %1, i64* %2, i64 %3) #4 {
  %5 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %5)
  %6 = alloca %struct.Points*, align 8
  %7 = alloca %struct.Points*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.Points* %0, %struct.Points** %6, align 8
  store %struct.Points* %1, %struct.Points** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.Points*, %struct.Points** %6, align 8
  %14 = getelementptr inbounds %struct.Points, %struct.Points* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call noalias i8* @calloc(i64 %15, i64 1) #3
  store i8* %16, i8** %12, align 8
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %33, %4
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.Points*, %struct.Points** %6, align 8
  %20 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.Points*, %struct.Points** %6, align 8
  %26 = getelementptr inbounds %struct.Points, %struct.Points* %25, i32 0, i32 2
  %27 = load %struct.Point*, %struct.Point** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.Point, %struct.Point* %27, i64 %28
  %30 = getelementptr inbounds %struct.Point, %struct.Point* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %24, i64 %31
  store i8 1, i8* %32, align 1
  br label %33

33:                                               ; preds = %23
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %10, align 8
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.Points*, %struct.Points** %7, align 8
  %38 = getelementptr inbounds %struct.Points, %struct.Points* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %96, %36
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.Points*, %struct.Points** %6, align 8
  %43 = getelementptr inbounds %struct.Points, %struct.Points* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %99

46:                                               ; preds = %40
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = trunc i8 %50 to i1
  br i1 %51, label %52, label %95

52:                                               ; preds = %46
  %53 = load %struct.Points*, %struct.Points** %7, align 8
  %54 = getelementptr inbounds %struct.Points, %struct.Points* %53, i32 0, i32 2
  %55 = load %struct.Point*, %struct.Point** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.Point, %struct.Point* %55, i64 %56
  %58 = getelementptr inbounds %struct.Point, %struct.Point* %57, i32 0, i32 1
  %59 = load float*, float** %58, align 8
  %60 = bitcast float* %59 to i8*
  %61 = load %struct.Points*, %struct.Points** %6, align 8
  %62 = getelementptr inbounds %struct.Points, %struct.Points* %61, i32 0, i32 2
  %63 = load %struct.Point*, %struct.Point** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.Point, %struct.Point* %63, i64 %64
  %66 = getelementptr inbounds %struct.Point, %struct.Point* %65, i32 0, i32 1
  %67 = load float*, float** %66, align 8
  %68 = bitcast float* %67 to i8*
  %69 = load %struct.Points*, %struct.Points** %6, align 8
  %70 = getelementptr inbounds %struct.Points, %struct.Points* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %68, i64 %73, i1 false)
  %74 = load %struct.Points*, %struct.Points** %6, align 8
  %75 = getelementptr inbounds %struct.Points, %struct.Points* %74, i32 0, i32 2
  %76 = load %struct.Point*, %struct.Point** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.Point, %struct.Point* %76, i64 %77
  %79 = getelementptr inbounds %struct.Point, %struct.Point* %78, i32 0, i32 0
  %80 = load float, float* %79, align 8
  %81 = load %struct.Points*, %struct.Points** %7, align 8
  %82 = getelementptr inbounds %struct.Points, %struct.Points* %81, i32 0, i32 2
  %83 = load %struct.Point*, %struct.Point** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds %struct.Point, %struct.Point* %83, i64 %84
  %86 = getelementptr inbounds %struct.Point, %struct.Point* %85, i32 0, i32 0
  store float %80, float* %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i64*, i64** %8, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %11, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %52, %46
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %40

99:                                               ; preds = %40
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.Points*, %struct.Points** %7, align 8
  %102 = getelementptr inbounds %struct.Points, %struct.Points* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i8*, i8** %12, align 8
  call void @free(i8* %103) #3
  call void @__pop_return_address()
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i8* @_Z14localSearchSubPv(i8* %0) #4 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pkmedian_arg_t*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.pkmedian_arg_t*
  store %struct.pkmedian_arg_t* %6, %struct.pkmedian_arg_t** %4, align 8
  %7 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %4, align 8
  %8 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %7, i32 0, i32 0
  %9 = load %struct.Points*, %struct.Points** %8, align 8
  %10 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %4, align 8
  %11 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %4, align 8
  %14 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %4, align 8
  %17 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %4, align 8
  %20 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %4, align 8
  %23 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %22, i32 0, i32 5
  %24 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %23, align 8
  %25 = call float @_Z8pkmedianP6PointsllPliP17pthread_barrier_t(%struct.Points* %9, i64 %12, i64 %15, i64* %18, i32 %21, %union.pthread_barrier_t* %24)
  call void @__pop_return_address()
  ret i8* null
}

; Function Attrs: noinline optnone
define dso_local void @_Z11localSearchP6PointsllPl(%struct.Points* %0, i64 %1, i64 %2, i64* %3) #6 {
  %5 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %5)
  %6 = alloca %struct.Points*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %union.pthread_barrier_t, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.pkmedian_arg_t*, align 8
  %13 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* @_ZL5nproc, align 4
  %15 = sext i32 %14 to i64
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 8)
  %17 = extractvalue { i64, i1 } %16, 1
  %18 = extractvalue { i64, i1 } %16, 0
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = call i8* @_Znam(i64 %19) #16
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %11, align 8
  %22 = load i32, i32* @_ZL5nproc, align 4
  %23 = sext i32 %22 to i64
  %24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %23, i64 48)
  %25 = extractvalue { i64, i1 } %24, 1
  %26 = extractvalue { i64, i1 } %24, 0
  %27 = select i1 %25, i64 -1, i64 %26
  %28 = call i8* @_Znam(i64 %27) #16
  %29 = bitcast i8* %28 to %struct.pkmedian_arg_t*
  store %struct.pkmedian_arg_t* %29, %struct.pkmedian_arg_t** %12, align 8
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %74, %4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @_ZL5nproc, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %30
  %35 = load %struct.Points*, %struct.Points** %6, align 8
  %36 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %36, i64 %38
  %40 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %39, i32 0, i32 0
  store %struct.Points* %35, %struct.Points** %40, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %42, i64 %44
  %46 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %45, i32 0, i32 1
  store i64 %41, i64* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %48, i64 %50
  %52 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %51, i32 0, i32 2
  store i64 %47, i64* %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %54, i64 %56
  %58 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %57, i32 0, i32 4
  store i32 %53, i32* %58, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %60, i64 %62
  %64 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %63, i32 0, i32 3
  store i64* %59, i64** %64, align 8
  %65 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %65, i64 %67
  %69 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %68, i32 0, i32 5
  store %union.pthread_barrier_t* %10, %union.pthread_barrier_t** %69, align 8
  %70 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %12, align 8
  %71 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %70, i64 0
  %72 = bitcast %struct.pkmedian_arg_t* %71 to i8*
  %73 = call i8* @_Z14localSearchSubPv(i8* %72)
  br label %74

74:                                               ; preds = %34
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %30

77:                                               ; preds = %30
  %78 = load i64*, i64** %11, align 8
  %79 = icmp eq i64* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = bitcast i64* %78 to i8*
  call void @_ZdaPv(i8* %81) #17
  br label %82

82:                                               ; preds = %80, %77
  %83 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %12, align 8
  %84 = icmp eq %struct.pkmedian_arg_t* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = bitcast %struct.pkmedian_arg_t* %83 to i8*
  call void @_ZdaPv(i8* %86) #17
  br label %87

87:                                               ; preds = %85, %82
  call void @__pop_return_address()
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #8

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #9

; Function Attrs: noinline optnone
define dso_local void @_Z12outcenterIDsP6PointsPlPc(%struct.Points* %0, i64* %1, i8* %2) #6 {
  %4 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %4)
  %5 = alloca %struct.Points*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %8, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  call void @exit(i32 1) #18
  unreachable

21:                                               ; preds = %3
  %22 = load %struct.Points*, %struct.Points** %5, align 8
  %23 = getelementptr inbounds %struct.Points, %struct.Points* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call noalias i8* @calloc(i64 4, i64 %24) #3
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %45, %21
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.Points*, %struct.Points** %5, align 8
  %31 = getelementptr inbounds %struct.Points, %struct.Points* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.Points*, %struct.Points** %5, align 8
  %37 = getelementptr inbounds %struct.Points, %struct.Points* %36, i32 0, i32 2
  %38 = load %struct.Point*, %struct.Point** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.Point, %struct.Point* %38, i64 %40
  %42 = getelementptr inbounds %struct.Point, %struct.Point* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %35, i64 %43
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %27

48:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %111, %48
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.Points*, %struct.Points** %5, align 8
  %53 = getelementptr inbounds %struct.Points, %struct.Points* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %49
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %110

63:                                               ; preds = %56
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %72 = load %struct.Points*, %struct.Points** %5, align 8
  %73 = getelementptr inbounds %struct.Points, %struct.Points* %72, i32 0, i32 2
  %74 = load %struct.Point*, %struct.Point** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.Point, %struct.Point* %74, i64 %76
  %78 = getelementptr inbounds %struct.Point, %struct.Point* %77, i32 0, i32 0
  %79 = load float, float* %78, align 8
  %80 = fpext float %79 to double
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %80)
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %104, %63
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.Points*, %struct.Points** %5, align 8
  %85 = getelementptr inbounds %struct.Points, %struct.Points* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %90 = load %struct.Points*, %struct.Points** %5, align 8
  %91 = getelementptr inbounds %struct.Points, %struct.Points* %90, i32 0, i32 2
  %92 = load %struct.Point*, %struct.Point** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.Point, %struct.Point* %92, i64 %94
  %96 = getelementptr inbounds %struct.Point, %struct.Point* %95, i32 0, i32 1
  %97 = load float*, float** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fpext float %101 to double
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %102)
  br label %104

104:                                              ; preds = %88
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %82

107:                                              ; preds = %82
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %56
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %49

114:                                              ; preds = %49
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %116 = call i32 @fclose(%struct._IO_FILE* %115)
  call void @__pop_return_address()
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #10

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline optnone
define dso_local void @_Z13streamClusterP7PStreamllillPc(%class.PStream* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5, i8* %6) #6 {
  %8 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %8)
  %9 = alloca %class.PStream*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %struct.Points, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.Points, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %class.PStream* %0, %class.PStream** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %27, %29
  %31 = mul i64 %30, 4
  %32 = call noalias i8* @malloc(i64 %31) #3
  %33 = bitcast i8* %32 to float*
  store float* %33, float** %16, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %34, %36
  %38 = mul i64 %37, 4
  %39 = call noalias i8* @malloc(i64 %38) #3
  %40 = bitcast i8* %39 to float*
  store float* %40, float** %17, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %41, %43
  %45 = mul i64 %44, 8
  %46 = call noalias i8* @malloc(i64 %45) #3
  %47 = bitcast i8* %46 to i64*
  store i64* %47, i64** %18, align 8
  %48 = load float*, float** %16, align 8
  %49 = icmp eq float* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %7
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 1) #18
  unreachable

53:                                               ; preds = %7
  %54 = load i32, i32* %12, align 4
  %55 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* %13, align 8
  %59 = mul i64 %58, 32
  %60 = call noalias i8* @malloc(i64 %59) #3
  %61 = bitcast i8* %60 to %struct.Point*
  %62 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 2
  store %struct.Point* %61, %struct.Point** %62, align 8
  store i32 0, i32* %20, align 4
  br label %63

63:                                               ; preds = %81, %53
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %13, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load float*, float** %16, align 8
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %69, i64 %73
  %75 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 2
  %76 = load %struct.Point*, %struct.Point** %75, align 8
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.Point, %struct.Point* %76, i64 %78
  %80 = getelementptr inbounds %struct.Point, %struct.Point* %79, i32 0, i32 1
  store float* %74, float** %80, align 8
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %20, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load i32, i32* %12, align 4
  %86 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  %87 = load i64, i64* %14, align 8
  %88 = mul i64 %87, 32
  %89 = call noalias i8* @malloc(i64 %88) #3
  %90 = bitcast i8* %89 to %struct.Point*
  %91 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 2
  store %struct.Point* %90, %struct.Point** %91, align 8
  %92 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 0
  store i64 0, i64* %92, align 8
  store i32 0, i32* %22, align 4
  br label %93

93:                                               ; preds = %117, %84
  %94 = load i32, i32* %22, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %14, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %93
  %99 = load float*, float** %17, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %12, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %99, i64 %103
  %105 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 2
  %106 = load %struct.Point*, %struct.Point** %105, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.Point, %struct.Point* %106, i64 %108
  %110 = getelementptr inbounds %struct.Point, %struct.Point* %109, i32 0, i32 1
  store float* %104, float** %110, align 8
  %111 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 2
  %112 = load %struct.Point*, %struct.Point** %111, align 8
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.Point, %struct.Point* %112, i64 %114
  %116 = getelementptr inbounds %struct.Point, %struct.Point* %115, i32 0, i32 0
  store float 1.000000e+00, float* %116, align 8
  br label %117

117:                                              ; preds = %98
  %118 = load i32, i32* %22, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %22, align 4
  br label %93

120:                                              ; preds = %93
  store i64 0, i64* %23, align 8
  br label %121

121:                                              ; preds = %221, %120
  %122 = load %class.PStream*, %class.PStream** %9, align 8
  %123 = load float*, float** %16, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i64, i64* %13, align 8
  %126 = trunc i64 %125 to i32
  %127 = bitcast %class.PStream* %122 to i64 (%class.PStream*, float*, i32, i32)***
  %128 = load i64 (%class.PStream*, float*, i32, i32)**, i64 (%class.PStream*, float*, i32, i32)*** %127, align 8
  %129 = getelementptr inbounds i64 (%class.PStream*, float*, i32, i32)*, i64 (%class.PStream*, float*, i32, i32)** %128, i64 0
  %130 = load i64 (%class.PStream*, float*, i32, i32)*, i64 (%class.PStream*, float*, i32, i32)** %129, align 8
  %131 = call i64 %130(%class.PStream* %122, float* %123, i32 %124, i32 %126)
  store i64 %131, i64* %25, align 8
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %133 = load i64, i64* %25, align 8
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 %133)
  %135 = load %class.PStream*, %class.PStream** %9, align 8
  %136 = bitcast %class.PStream* %135 to i32 (%class.PStream*)***
  %137 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %136, align 8
  %138 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %137, i64 1
  %139 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %138, align 8
  %140 = call i32 %139(%class.PStream* %135)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %121
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %13, align 8
  %145 = trunc i64 %144 to i32
  %146 = zext i32 %145 to i64
  %147 = icmp ult i64 %143, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %142
  %149 = load %class.PStream*, %class.PStream** %9, align 8
  %150 = bitcast %class.PStream* %149 to i32 (%class.PStream*)***
  %151 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %150, align 8
  %152 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %151, i64 2
  %153 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %152, align 8
  %154 = call i32 %153(%class.PStream* %149)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %148, %121
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 1) #18
  unreachable

159:                                              ; preds = %148, %142
  %160 = load i64, i64* %25, align 8
  %161 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 0
  store i64 %160, i64* %161, align 8
  store i32 0, i32* %26, align 4
  br label %162

162:                                              ; preds = %175, %159
  %163 = load i32, i32* %26, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %164, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 2
  %170 = load %struct.Point*, %struct.Point** %169, align 8
  %171 = load i32, i32* %26, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.Point, %struct.Point* %170, i64 %172
  %174 = getelementptr inbounds %struct.Point, %struct.Point* %173, i32 0, i32 0
  store float 1.000000e+00, float* %174, align 8
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %26, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %26, align 4
  br label %162

178:                                              ; preds = %162
  %179 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = mul i64 %180, 1
  %182 = call noalias i8* @malloc(i64 %181) #3
  store i8* %182, i8** @_ZL17switch_membership, align 8
  %183 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call noalias i8* @calloc(i64 %184, i64 1) #3
  store i8* %185, i8** @_ZL9is_center, align 8
  %186 = getelementptr inbounds %struct.Points, %struct.Points* %19, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = mul i64 %187, 4
  %189 = call noalias i8* @malloc(i64 %188) #3
  %190 = bitcast i8* %189 to i32*
  store i32* %190, i32** @_ZL12center_table, align 8
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* %11, align 8
  call void @_Z11localSearchP6PointsllPl(%struct.Points* %19, i64 %191, i64 %192, i64* %24)
  %193 = call i32 @_Z11contcentersP6Points(%struct.Points* %19)
  %194 = load i64, i64* %24, align 8
  %195 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %194, %196
  %198 = load i64, i64* %14, align 8
  %199 = icmp sgt i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %178
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #18
  unreachable

203:                                              ; preds = %178
  %204 = load i64*, i64** %18, align 8
  %205 = load i64, i64* %23, align 8
  call void @_Z11copycentersP6PointsS0_Pll(%struct.Points* %19, %struct.Points* %21, i64* %204, i64 %205)
  %206 = load i64, i64* %25, align 8
  %207 = load i64, i64* %23, align 8
  %208 = add i64 %207, %206
  store i64 %208, i64* %23, align 8
  %209 = load i8*, i8** @_ZL9is_center, align 8
  call void @free(i8* %209) #3
  %210 = load i8*, i8** @_ZL17switch_membership, align 8
  call void @free(i8* %210) #3
  %211 = load i32*, i32** @_ZL12center_table, align 8
  %212 = bitcast i32* %211 to i8*
  call void @free(i8* %212) #3
  %213 = load %class.PStream*, %class.PStream** %9, align 8
  %214 = bitcast %class.PStream* %213 to i32 (%class.PStream*)***
  %215 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %214, align 8
  %216 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %215, i64 2
  %217 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %216, align 8
  %218 = call i32 %217(%class.PStream* %213)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %203
  br label %222

221:                                              ; preds = %203
  br label %121

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = mul i64 %224, 1
  %226 = call noalias i8* @malloc(i64 %225) #3
  store i8* %226, i8** @_ZL17switch_membership, align 8
  %227 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call noalias i8* @calloc(i64 %228, i64 1) #3
  store i8* %229, i8** @_ZL9is_center, align 8
  %230 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = mul i64 %231, 4
  %233 = call noalias i8* @malloc(i64 %232) #3
  %234 = bitcast i8* %233 to i32*
  store i32* %234, i32** @_ZL12center_table, align 8
  %235 = load i64, i64* %10, align 8
  %236 = load i64, i64* %11, align 8
  call void @_Z11localSearchP6PointsllPl(%struct.Points* %21, i64 %235, i64 %236, i64* %24)
  %237 = call i32 @_Z11contcentersP6Points(%struct.Points* %21)
  %238 = load i64*, i64** %18, align 8
  %239 = load i8*, i8** %15, align 8
  call void @_Z12outcenterIDsP6PointsPlPc(%struct.Points* %21, i64* %238, i8* %239)
  call void @__pop_return_address()
  ret void
}

; Function Attrs: noinline norecurse optnone
define dso_local i32 @main(i32 %0, i8** %1) #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %class.PStream*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call i8* @_Znam(i64 1024) #16
  store i8* %17, i8** %6, align 8
  %18 = call i8* @_Znam(i64 1024) #16
  store i8* %18, i8** %7, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %21 = call i32 @fflush(%struct._IO_FILE* null)
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %52

24:                                               ; preds = %2
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i8* %28)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.22, i64 0, i64 0))
  call void @exit(i32 1) #18
  unreachable

52:                                               ; preds = %2
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @atoi(i8* %55) #19
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %8, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @atoi(i8* %60) #19
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %9, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @atoi(i8* %65) #19
  store i32 %66, i32* %13, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 4
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @atoi(i8* %69) #19
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %10, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 5
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @atoi(i8* %74) #19
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %11, align 8
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 6
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @atoi(i8* %79) #19
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %12, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 7
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @strcpy(i8* %82, i8* %85) #3
  %87 = load i8*, i8** %6, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @strcpy(i8* %87, i8* %90) #3
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 9
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @atoi(i8* %94) #19
  store i32 %95, i32* @_ZL5nproc, align 4
  call void @srand48(i64 1) #3
  %96 = load i64, i64* %10, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %52
  %99 = call i8* @_Znwm(i64 16) #16
  %100 = bitcast i8* %99 to %class.SimStream*
  %101 = load i64, i64* %10, align 8
  invoke void @_ZN9SimStreamC2El(%class.SimStream* %100, i64 %101)
          to label %102 unwind label %104

102:                                              ; preds = %98
  %103 = bitcast %class.SimStream* %100 to %class.PStream*
  store %class.PStream* %103, %class.PStream** %14, align 8
  br label %118

104:                                              ; preds = %98
  %105 = landingpad { i8*, i32 }
          cleanup
  %106 = extractvalue { i8*, i32 } %105, 0
  store i8* %106, i8** %15, align 8
  %107 = extractvalue { i8*, i32 } %105, 1
  store i32 %107, i32* %16, align 4
  call void @_ZdlPv(i8* %99) #17
  br label %134

108:                                              ; preds = %52
  %109 = call i8* @_Znwm(i64 16) #16
  %110 = bitcast i8* %109 to %class.FileStream*
  %111 = load i8*, i8** %7, align 8
  invoke void @_ZN10FileStreamC2EPc(%class.FileStream* %110, i8* %111)
          to label %112 unwind label %114

112:                                              ; preds = %108
  %113 = bitcast %class.FileStream* %110 to %class.PStream*
  store %class.PStream* %113, %class.PStream** %14, align 8
  br label %118

114:                                              ; preds = %108
  %115 = landingpad { i8*, i32 }
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  store i8* %116, i8** %15, align 8
  %117 = extractvalue { i8*, i32 } %115, 1
  store i32 %117, i32* %16, align 4
  call void @_ZdlPv(i8* %109) #17
  br label %134

118:                                              ; preds = %112, %102
  %119 = load %class.PStream*, %class.PStream** %14, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i8*, i8** %6, align 8
  call void @_Z13streamClusterP7PStreamllillPc(%class.PStream* %119, i64 %120, i64 %121, i32 %122, i64 %123, i64 %124, i8* %125)
  %126 = load %class.PStream*, %class.PStream** %14, align 8
  %127 = icmp eq %class.PStream* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %118
  %129 = bitcast %class.PStream* %126 to void (%class.PStream*)***
  %130 = load void (%class.PStream*)**, void (%class.PStream*)*** %129, align 8
  %131 = getelementptr inbounds void (%class.PStream*)*, void (%class.PStream*)** %130, i64 4
  %132 = load void (%class.PStream*)*, void (%class.PStream*)** %131, align 8
  call void %132(%class.PStream* %126) #3
  br label %133

133:                                              ; preds = %128, %118
  ret i32 0

134:                                              ; preds = %114, %104
  %135 = load i8*, i8** %15, align 8
  %136 = load i32, i32* %16, align 4
  %137 = insertvalue { i8*, i32 } undef, i8* %135, 0
  %138 = insertvalue { i8*, i32 } %137, i32 %136, 1
  resume { i8*, i32 } %138
}

declare dso_local i32 @__gxx_personality_v0(...)

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #12

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local void @srand48(i64) #2

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #8

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN9SimStreamC2El(%class.SimStream* %0, i64 %1) unnamed_addr #4 comdat align 2 {
  %3 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %3)
  %4 = alloca %class.SimStream*, align 8
  %5 = alloca i64, align 8
  store %class.SimStream* %0, %class.SimStream** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %class.SimStream*, %class.SimStream** %4, align 8
  %7 = bitcast %class.SimStream* %6 to %class.PStream*
  call void @_ZN7PStreamC2Ev(%class.PStream* %7) #3
  %8 = bitcast %class.SimStream* %6 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV9SimStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds %class.SimStream, %class.SimStream* %6, i32 0, i32 1
  store i64 %9, i64* %10, align 8
  call void @__pop_return_address()
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #9

; Function Attrs: noinline optnone
define linkonce_odr dso_local void @_ZN10FileStreamC2EPc(%class.FileStream* %0, i8* %1) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %3)
  %4 = alloca %class.FileStream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %class.FileStream* %0, %class.FileStream** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %class.FileStream*, %class.FileStream** %4, align 8
  %9 = bitcast %class.FileStream* %8 to %class.PStream*
  call void @_ZN7PStreamC2Ev(%class.PStream* %9) #3
  %10 = bitcast %class.FileStream* %8 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10FileStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = invoke %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
          to label %13 unwind label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %class.FileStream, %class.FileStream* %8, i32 0, i32 1
  store %struct._IO_FILE* %12, %struct._IO_FILE** %14, align 8
  %15 = getelementptr inbounds %class.FileStream, %class.FileStream* %8, i32 0, i32 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8* %20)
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @exit(i32 1) #18
  unreachable

23:                                               ; preds = %18, %2
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %6, align 8
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %7, align 4
  %27 = bitcast %class.FileStream* %8 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* %27) #3
  br label %29

28:                                               ; preds = %13
  call void @__pop_return_address()
  ret void

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN7PStreamC2Ev(%class.PStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.PStream*, align 8
  store %class.PStream* %0, %class.PStream** %3, align 8
  %4 = load %class.PStream*, %class.PStream** %3, align 8
  %5 = bitcast %class.PStream* %4 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7PStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  call void @__pop_return_address()
  ret void
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN7PStreamD2Ev(%class.PStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.PStream*, align 8
  store %class.PStream* %0, %class.PStream** %3, align 8
  %4 = load %class.PStream*, %class.PStream** %3, align 8
  call void @__pop_return_address()
  ret void
}

; Function Attrs: noinline optnone
define linkonce_odr dso_local i64 @_ZN10FileStream4readEPfii(%class.FileStream* %0, float* %1, i32 %2, i32 %3) unnamed_addr #6 comdat align 2 {
  %5 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %5)
  %6 = alloca %class.FileStream*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.FileStream* %0, %class.FileStream** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %class.FileStream*, %class.FileStream** %6, align 8
  %11 = load float*, float** %7, align 8
  %12 = bitcast float* %11 to i8*
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %class.FileStream, %class.FileStream* %10, i32 0, i32 1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %20 = call i64 @fread(i8* %12, i64 %15, i64 %17, %struct._IO_FILE* %19)
  call void @__pop_return_address()
  ret i64 %20
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i32 @_ZN10FileStream6ferrorEv(%class.FileStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %3, align 8
  %4 = load %class.FileStream*, %class.FileStream** %3, align 8
  %5 = getelementptr inbounds %class.FileStream, %class.FileStream* %4, i32 0, i32 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %7 = call i32 @ferror(%struct._IO_FILE* %6) #3
  call void @__pop_return_address()
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i32 @_ZN10FileStream4feofEv(%class.FileStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %3, align 8
  %4 = load %class.FileStream*, %class.FileStream** %3, align 8
  %5 = getelementptr inbounds %class.FileStream, %class.FileStream* %4, i32 0, i32 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %7 = call i32 @feof(%struct._IO_FILE* %6) #3
  call void @__pop_return_address()
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN10FileStreamD2Ev(%class.FileStream* %0) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.FileStream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %class.FileStream* %0, %class.FileStream** %3, align 8
  %6 = load %class.FileStream*, %class.FileStream** %3, align 8
  %7 = bitcast %class.FileStream* %6 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10FileStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
          to label %10 unwind label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.FileStream, %class.FileStream* %6, i32 0, i32 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %13 = invoke i32 @fclose(%struct._IO_FILE* %12)
          to label %14 unwind label %16

14:                                               ; preds = %10
  %15 = bitcast %class.FileStream* %6 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* %15) #3
  call void @__pop_return_address()
  ret void

16:                                               ; preds = %10, %1
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %4, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %5, align 4
  %20 = bitcast %class.FileStream* %6 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* %20) #3
  br label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  call void @__clang_call_terminate(i8* %22) #18
  unreachable
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN10FileStreamD0Ev(%class.FileStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %3, align 8
  %4 = load %class.FileStream*, %class.FileStream** %3, align 8
  call void @_ZN10FileStreamD2Ev(%class.FileStream* %4) #3
  %5 = bitcast %class.FileStream* %4 to i8*
  call void @_ZdlPv(i8* %5) #17
  call void @__pop_return_address()
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #13 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #18
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN7PStreamD0Ev(%class.PStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.PStream*, align 8
  store %class.PStream* %0, %class.PStream** %3, align 8
  %4 = load %class.PStream*, %class.PStream** %3, align 8
  call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #14

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i64 @_ZN9SimStream4readEPfii(%class.SimStream* %0, float* %1, i32 %2, i32 %3) unnamed_addr #4 comdat align 2 {
  %5 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %5)
  %6 = alloca %class.SimStream*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %class.SimStream* %0, %class.SimStream** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %class.SimStream*, %class.SimStream** %6, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %50, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %class.SimStream, %class.SimStream* %13, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %53

24:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = call i64 @lrand48() #3
  %31 = sitofp i64 %30 to float
  %32 = fdiv float %31, 0x41E0000000000000
  %33 = load float*, float** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %33, i64 %39
  store float %32, float* %40, align 4
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %25

44:                                               ; preds = %25
  %45 = getelementptr inbounds %class.SimStream, %class.SimStream* %13, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %14

53:                                               ; preds = %22
  %54 = load i64, i64* %10, align 8
  call void @__pop_return_address()
  ret i64 %54
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i32 @_ZN9SimStream6ferrorEv(%class.SimStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %3, align 8
  %4 = load %class.SimStream*, %class.SimStream** %3, align 8
  call void @__pop_return_address()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i32 @_ZN9SimStream4feofEv(%class.SimStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %3, align 8
  %4 = load %class.SimStream*, %class.SimStream** %3, align 8
  %5 = getelementptr inbounds %class.SimStream, %class.SimStream* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp sle i64 %6, 0
  %8 = zext i1 %7 to i32
  call void @__pop_return_address()
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN9SimStreamD2Ev(%class.SimStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %3, align 8
  %4 = load %class.SimStream*, %class.SimStream** %3, align 8
  %5 = bitcast %class.SimStream* %4 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* %5) #3
  call void @__pop_return_address()
  ret void
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN9SimStreamD0Ev(%class.SimStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = call i8* @llvm.returnaddress(i32 0)
  call void @__push_return_address(i8* %2)
  %3 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %3, align 8
  %4 = load %class.SimStream*, %class.SimStream** %3, align 8
  call void @_ZN9SimStreamD2Ev(%class.SimStream* %4) #3
  %5 = bitcast %class.SimStream* %4 to i8*
  call void @_ZdlPv(i8* %5) #17
  call void @__pop_return_address()
  ret void
}

; Function Attrs: nounwind readnone
declare i8* @llvm.returnaddress(i32 immarg) #15

declare void @__push_return_address(i8*)

declare void @__pop_return_address()

attributes #0 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noinline optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline norecurse optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { builtin }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
