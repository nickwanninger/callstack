; ModuleID = 'streamcluster.bc'
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
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %35, %3
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %36

19:                                               ; preds = %17
  %20 = load float*, float** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fcmp une float %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %35

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %31
  br label %10

36:                                               ; preds = %17
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %41

40:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone
define dso_local void @_Z7shuffleP6Points(%struct.Points* %0) #4 {
  %2 = alloca %struct.Points*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Point, align 8
  store %struct.Points* %0, %struct.Points** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %49, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.Points*, %struct.Points** %2, align 8
  %9 = getelementptr inbounds %struct.Points, %struct.Points* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, 1
  %12 = icmp slt i64 %7, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %6
  %14 = call i64 @lrand48() #3
  %15 = load %struct.Points*, %struct.Points** %2, align 8
  %16 = getelementptr inbounds %struct.Points, %struct.Points* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = sub nsw i64 %17, %18
  %20 = srem i64 %14, %19
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %4, align 8
  %23 = load %struct.Points*, %struct.Points** %2, align 8
  %24 = getelementptr inbounds %struct.Points, %struct.Points* %23, i32 0, i32 2
  %25 = load %struct.Point*, %struct.Point** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.Point, %struct.Point* %25, i64 %26
  %28 = bitcast %struct.Point* %5 to i8*
  %29 = bitcast %struct.Point* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 32, i1 false)
  %30 = load %struct.Points*, %struct.Points** %2, align 8
  %31 = getelementptr inbounds %struct.Points, %struct.Points* %30, i32 0, i32 2
  %32 = load %struct.Point*, %struct.Point** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.Point, %struct.Point* %32, i64 %33
  %35 = load %struct.Points*, %struct.Points** %2, align 8
  %36 = getelementptr inbounds %struct.Points, %struct.Points* %35, i32 0, i32 2
  %37 = load %struct.Point*, %struct.Point** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.Point, %struct.Point* %37, i64 %38
  %40 = bitcast %struct.Point* %39 to i8*
  %41 = bitcast %struct.Point* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 32, i1 false)
  %42 = load %struct.Points*, %struct.Points** %2, align 8
  %43 = getelementptr inbounds %struct.Points, %struct.Points* %42, i32 0, i32 2
  %44 = load %struct.Point*, %struct.Point** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.Point, %struct.Point* %44, i64 %45
  %47 = bitcast %struct.Point* %46 to i8*
  %48 = bitcast %struct.Point* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 32, i1 false)
  br label %49

49:                                               ; preds = %13
  %50 = load i64, i64* %3, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %6

52:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @lrand48() #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone
define dso_local void @_Z10intshufflePii(i32* %0, i32 %1) #4 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = call i64 @lrand48() #3
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %5, align 8
  %18 = sub nsw i64 %16, %17
  %19 = srem i64 %14, %18
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %13
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %8

40:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local float @_Z4dist5PointS_i(%struct.Point* %0, %struct.Point* %1, i32 %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store i32 %2, i32* %4, align 4
  store float 0.000000e+00, float* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %41, %3
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Point, %struct.Point* %0, i32 0, i32 1
  %13 = load float*, float** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %13, i64 %15
  %17 = load float, float* %16, align 4
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %1, i32 0, i32 1
  %19 = load float*, float** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fsub float %17, %23
  %25 = getelementptr inbounds %struct.Point, %struct.Point* %0, i32 0, i32 1
  %26 = load float*, float** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  %31 = getelementptr inbounds %struct.Point, %struct.Point* %1, i32 0, i32 1
  %32 = load float*, float** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fsub float %30, %36
  %38 = fmul float %24, %37
  %39 = load float, float* %6, align 4
  %40 = fadd float %39, %38
  store float %40, float* %6, align 4
  br label %41

41:                                               ; preds = %11
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %7

44:                                               ; preds = %7
  %45 = load float, float* %6, align 4
  ret float %45
}

; Function Attrs: noinline nounwind optnone
define dso_local float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* %0, float %1, i64* %2, i32 %3, %union.pthread_barrier_t* %4) #4 {
  %6 = alloca %struct.Points*, align 8
  %7 = alloca float, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.pthread_barrier_t*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.Point, align 8
  %17 = alloca %struct.Point, align 8
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca %struct.Point, align 8
  %21 = alloca %struct.Point, align 8
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca %struct.Point, align 8
  %26 = alloca %struct.Point, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %6, align 8
  store float %1, float* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store %union.pthread_barrier_t* %4, %union.pthread_barrier_t** %10, align 8
  %30 = load %struct.Points*, %struct.Points** %6, align 8
  %31 = getelementptr inbounds %struct.Points, %struct.Points* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @_ZL5nproc, align 4
  %34 = sext i32 %33 to i64
  %35 = sdiv i64 %32, %34
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = mul nsw i64 %36, %38
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %13, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @_ZL5nproc, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %5
  %48 = load %struct.Points*, %struct.Points** %6, align 8
  %49 = getelementptr inbounds %struct.Points, %struct.Points* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %47, %5
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %102, %51
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %13, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %105

59:                                               ; preds = %54
  %60 = load %struct.Points*, %struct.Points** %6, align 8
  %61 = getelementptr inbounds %struct.Points, %struct.Points* %60, i32 0, i32 2
  %62 = load %struct.Point*, %struct.Point** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.Point, %struct.Point* %62, i64 %64
  %66 = bitcast %struct.Point* %16 to i8*
  %67 = bitcast %struct.Point* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 32, i1 false)
  %68 = load %struct.Points*, %struct.Points** %6, align 8
  %69 = getelementptr inbounds %struct.Points, %struct.Points* %68, i32 0, i32 2
  %70 = load %struct.Point*, %struct.Point** %69, align 8
  %71 = getelementptr inbounds %struct.Point, %struct.Point* %70, i64 0
  %72 = bitcast %struct.Point* %17 to i8*
  %73 = bitcast %struct.Point* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 32, i1 false)
  %74 = load %struct.Points*, %struct.Points** %6, align 8
  %75 = getelementptr inbounds %struct.Points, %struct.Points* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call float @_Z4dist5PointS_i(%struct.Point* %16, %struct.Point* %17, i32 %76)
  store float %77, float* %15, align 4
  %78 = load float, float* %15, align 4
  %79 = load %struct.Points*, %struct.Points** %6, align 8
  %80 = getelementptr inbounds %struct.Points, %struct.Points* %79, i32 0, i32 2
  %81 = load %struct.Point*, %struct.Point** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Point, %struct.Point* %81, i64 %83
  %85 = getelementptr inbounds %struct.Point, %struct.Point* %84, i32 0, i32 0
  %86 = load float, float* %85, align 8
  %87 = fmul float %78, %86
  %88 = load %struct.Points*, %struct.Points** %6, align 8
  %89 = getelementptr inbounds %struct.Points, %struct.Points* %88, i32 0, i32 2
  %90 = load %struct.Point*, %struct.Point** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.Point, %struct.Point* %90, i64 %92
  %94 = getelementptr inbounds %struct.Point, %struct.Point* %93, i32 0, i32 3
  store float %87, float* %94, align 8
  %95 = load %struct.Points*, %struct.Points** %6, align 8
  %96 = getelementptr inbounds %struct.Points, %struct.Points* %95, i32 0, i32 2
  %97 = load %struct.Point*, %struct.Point** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.Point, %struct.Point* %97, i64 %99
  %101 = getelementptr inbounds %struct.Point, %struct.Point* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %59
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %54

105:                                              ; preds = %54
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i64*, i64** %8, align 8
  store i64 1, i64* %109, align 8
  %110 = load i32, i32* @_ZL5nproc, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 8, %111
  %113 = call noalias i8* @malloc(i64 %112) #3
  %114 = bitcast i8* %113 to double*
  store double* %114, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  br label %115

115:                                              ; preds = %108, %105
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %208

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118, %206
  %120 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.Points*, %struct.Points** %6, align 8
  %123 = getelementptr inbounds %struct.Points, %struct.Points* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sge i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %207

127:                                              ; preds = %119
  %128 = load i64, i64* %12, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %18, align 4
  br label %130

130:                                              ; preds = %203, %127
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %13, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %206

135:                                              ; preds = %130
  %136 = load %struct.Points*, %struct.Points** %6, align 8
  %137 = getelementptr inbounds %struct.Points, %struct.Points* %136, i32 0, i32 2
  %138 = load %struct.Point*, %struct.Point** %137, align 8
  %139 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.Point, %struct.Point* %138, i64 %140
  %142 = bitcast %struct.Point* %20 to i8*
  %143 = bitcast %struct.Point* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 32, i1 false)
  %144 = load %struct.Points*, %struct.Points** %6, align 8
  %145 = getelementptr inbounds %struct.Points, %struct.Points* %144, i32 0, i32 2
  %146 = load %struct.Point*, %struct.Point** %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.Point, %struct.Point* %146, i64 %148
  %150 = bitcast %struct.Point* %21 to i8*
  %151 = bitcast %struct.Point* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 32, i1 false)
  %152 = load %struct.Points*, %struct.Points** %6, align 8
  %153 = getelementptr inbounds %struct.Points, %struct.Points* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call float @_Z4dist5PointS_i(%struct.Point* %20, %struct.Point* %21, i32 %154)
  store float %155, float* %19, align 4
  %156 = load float, float* %19, align 4
  %157 = load %struct.Points*, %struct.Points** %6, align 8
  %158 = getelementptr inbounds %struct.Points, %struct.Points* %157, i32 0, i32 2
  %159 = load %struct.Point*, %struct.Point** %158, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.Point, %struct.Point* %159, i64 %161
  %163 = getelementptr inbounds %struct.Point, %struct.Point* %162, i32 0, i32 0
  %164 = load float, float* %163, align 8
  %165 = fmul float %156, %164
  %166 = load %struct.Points*, %struct.Points** %6, align 8
  %167 = getelementptr inbounds %struct.Points, %struct.Points* %166, i32 0, i32 2
  %168 = load %struct.Point*, %struct.Point** %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.Point, %struct.Point* %168, i64 %170
  %172 = getelementptr inbounds %struct.Point, %struct.Point* %171, i32 0, i32 3
  %173 = load float, float* %172, align 8
  %174 = fcmp olt float %165, %173
  br i1 %174, label %175, label %202

175:                                              ; preds = %135
  %176 = load float, float* %19, align 4
  %177 = load %struct.Points*, %struct.Points** %6, align 8
  %178 = getelementptr inbounds %struct.Points, %struct.Points* %177, i32 0, i32 2
  %179 = load %struct.Point*, %struct.Point** %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.Point, %struct.Point* %179, i64 %181
  %183 = getelementptr inbounds %struct.Point, %struct.Point* %182, i32 0, i32 0
  %184 = load float, float* %183, align 8
  %185 = fmul float %176, %184
  %186 = load %struct.Points*, %struct.Points** %6, align 8
  %187 = getelementptr inbounds %struct.Points, %struct.Points* %186, i32 0, i32 2
  %188 = load %struct.Point*, %struct.Point** %187, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.Point, %struct.Point* %188, i64 %190
  %192 = getelementptr inbounds %struct.Point, %struct.Point* %191, i32 0, i32 3
  store float %185, float* %192, align 8
  %193 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.Points*, %struct.Points** %6, align 8
  %196 = getelementptr inbounds %struct.Points, %struct.Points* %195, i32 0, i32 2
  %197 = load %struct.Point*, %struct.Point** %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.Point, %struct.Point* %197, i64 %199
  %201 = getelementptr inbounds %struct.Point, %struct.Point* %200, i32 0, i32 2
  store i64 %194, i64* %201, align 8
  br label %202

202:                                              ; preds = %175, %135
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %18, align 4
  br label %130

206:                                              ; preds = %130
  br label %119

207:                                              ; preds = %126
  br label %322

208:                                              ; preds = %115
  store i32 1, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  br label %209

209:                                              ; preds = %318, %208
  %210 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %211 = sext i32 %210 to i64
  %212 = load %struct.Points*, %struct.Points** %6, align 8
  %213 = getelementptr inbounds %struct.Points, %struct.Points* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %216, label %321

216:                                              ; preds = %209
  %217 = call i64 @lrand48() #3
  %218 = sitofp i64 %217 to float
  %219 = fdiv float %218, 0x41E0000000000000
  %220 = load %struct.Points*, %struct.Points** %6, align 8
  %221 = getelementptr inbounds %struct.Points, %struct.Points* %220, i32 0, i32 2
  %222 = load %struct.Point*, %struct.Point** %221, align 8
  %223 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.Point, %struct.Point* %222, i64 %224
  %226 = getelementptr inbounds %struct.Point, %struct.Point* %225, i32 0, i32 3
  %227 = load float, float* %226, align 8
  %228 = load float, float* %7, align 4
  %229 = fdiv float %227, %228
  %230 = fcmp olt float %219, %229
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %22, align 1
  %232 = load i8, i8* %22, align 1
  %233 = trunc i8 %232 to i1
  br i1 %233, label %234, label %317

234:                                              ; preds = %216
  %235 = load i64*, i64** %8, align 8
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %235, align 8
  store i8 1, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  %238 = load i64, i64* %12, align 8
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %23, align 4
  br label %240

240:                                              ; preds = %313, %234
  %241 = load i32, i32* %23, align 4
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %13, align 8
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %316

245:                                              ; preds = %240
  %246 = load %struct.Points*, %struct.Points** %6, align 8
  %247 = getelementptr inbounds %struct.Points, %struct.Points* %246, i32 0, i32 2
  %248 = load %struct.Point*, %struct.Point** %247, align 8
  %249 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.Point, %struct.Point* %248, i64 %250
  %252 = bitcast %struct.Point* %25 to i8*
  %253 = bitcast %struct.Point* %251 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %252, i8* align 8 %253, i64 32, i1 false)
  %254 = load %struct.Points*, %struct.Points** %6, align 8
  %255 = getelementptr inbounds %struct.Points, %struct.Points* %254, i32 0, i32 2
  %256 = load %struct.Point*, %struct.Point** %255, align 8
  %257 = load i32, i32* %23, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.Point, %struct.Point* %256, i64 %258
  %260 = bitcast %struct.Point* %26 to i8*
  %261 = bitcast %struct.Point* %259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %260, i8* align 8 %261, i64 32, i1 false)
  %262 = load %struct.Points*, %struct.Points** %6, align 8
  %263 = getelementptr inbounds %struct.Points, %struct.Points* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = call float @_Z4dist5PointS_i(%struct.Point* %25, %struct.Point* %26, i32 %264)
  store float %265, float* %24, align 4
  %266 = load float, float* %24, align 4
  %267 = load %struct.Points*, %struct.Points** %6, align 8
  %268 = getelementptr inbounds %struct.Points, %struct.Points* %267, i32 0, i32 2
  %269 = load %struct.Point*, %struct.Point** %268, align 8
  %270 = load i32, i32* %23, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.Point, %struct.Point* %269, i64 %271
  %273 = getelementptr inbounds %struct.Point, %struct.Point* %272, i32 0, i32 0
  %274 = load float, float* %273, align 8
  %275 = fmul float %266, %274
  %276 = load %struct.Points*, %struct.Points** %6, align 8
  %277 = getelementptr inbounds %struct.Points, %struct.Points* %276, i32 0, i32 2
  %278 = load %struct.Point*, %struct.Point** %277, align 8
  %279 = load i32, i32* %23, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.Point, %struct.Point* %278, i64 %280
  %282 = getelementptr inbounds %struct.Point, %struct.Point* %281, i32 0, i32 3
  %283 = load float, float* %282, align 8
  %284 = fcmp olt float %275, %283
  br i1 %284, label %285, label %312

285:                                              ; preds = %245
  %286 = load float, float* %24, align 4
  %287 = load %struct.Points*, %struct.Points** %6, align 8
  %288 = getelementptr inbounds %struct.Points, %struct.Points* %287, i32 0, i32 2
  %289 = load %struct.Point*, %struct.Point** %288, align 8
  %290 = load i32, i32* %23, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.Point, %struct.Point* %289, i64 %291
  %293 = getelementptr inbounds %struct.Point, %struct.Point* %292, i32 0, i32 0
  %294 = load float, float* %293, align 8
  %295 = fmul float %286, %294
  %296 = load %struct.Points*, %struct.Points** %6, align 8
  %297 = getelementptr inbounds %struct.Points, %struct.Points* %296, i32 0, i32 2
  %298 = load %struct.Point*, %struct.Point** %297, align 8
  %299 = load i32, i32* %23, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.Point, %struct.Point* %298, i64 %300
  %302 = getelementptr inbounds %struct.Point, %struct.Point* %301, i32 0, i32 3
  store float %295, float* %302, align 8
  %303 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %304 = sext i32 %303 to i64
  %305 = load %struct.Points*, %struct.Points** %6, align 8
  %306 = getelementptr inbounds %struct.Points, %struct.Points* %305, i32 0, i32 2
  %307 = load %struct.Point*, %struct.Point** %306, align 8
  %308 = load i32, i32* %23, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.Point, %struct.Point* %307, i64 %309
  %311 = getelementptr inbounds %struct.Point, %struct.Point* %310, i32 0, i32 2
  store i64 %304, i64* %311, align 8
  br label %312

312:                                              ; preds = %285, %245
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %23, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %23, align 4
  br label %240

316:                                              ; preds = %240
  store i8 0, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  br label %317

317:                                              ; preds = %316, %216
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  br label %209

321:                                              ; preds = %209
  store i8 1, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  br label %322

322:                                              ; preds = %321, %207
  store i8 0, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  store double 0.000000e+00, double* %27, align 8
  %323 = load i64, i64* %12, align 8
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %28, align 4
  br label %325

325:                                              ; preds = %342, %322
  %326 = load i32, i32* %28, align 4
  %327 = sext i32 %326 to i64
  %328 = load i64, i64* %13, align 8
  %329 = icmp slt i64 %327, %328
  br i1 %329, label %330, label %345

330:                                              ; preds = %325
  %331 = load %struct.Points*, %struct.Points** %6, align 8
  %332 = getelementptr inbounds %struct.Points, %struct.Points* %331, i32 0, i32 2
  %333 = load %struct.Point*, %struct.Point** %332, align 8
  %334 = load i32, i32* %28, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.Point, %struct.Point* %333, i64 %335
  %337 = getelementptr inbounds %struct.Point, %struct.Point* %336, i32 0, i32 3
  %338 = load float, float* %337, align 8
  %339 = fpext float %338 to double
  %340 = load double, double* %27, align 8
  %341 = fadd double %340, %339
  store double %341, double* %27, align 8
  br label %342

342:                                              ; preds = %330
  %343 = load i32, i32* %28, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %28, align 4
  br label %325

345:                                              ; preds = %325
  %346 = load double, double* %27, align 8
  %347 = load double*, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds double, double* %347, i64 %349
  store double %346, double* %350, align 8
  %351 = load i32, i32* %9, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %378

353:                                              ; preds = %345
  %354 = load float, float* %7, align 4
  %355 = load i64*, i64** %8, align 8
  %356 = load i64, i64* %355, align 8
  %357 = sitofp i64 %356 to float
  %358 = fmul float %354, %357
  %359 = fpext float %358 to double
  store double %359, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8
  store i32 0, i32* %29, align 4
  br label %360

360:                                              ; preds = %372, %353
  %361 = load i32, i32* %29, align 4
  %362 = load i32, i32* @_ZL5nproc, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %375

364:                                              ; preds = %360
  %365 = load double*, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  %366 = load i32, i32* %29, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds double, double* %365, i64 %367
  %369 = load double, double* %368, align 8
  %370 = load double, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8
  %371 = fadd double %370, %369
  store double %371, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8
  br label %372

372:                                              ; preds = %364
  %373 = load i32, i32* %29, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %29, align 4
  br label %360

375:                                              ; preds = %360
  %376 = load double*, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  %377 = bitcast double* %376 to i8*
  call void @free(i8* %377) #3
  br label %378

378:                                              ; preds = %375, %345
  %379 = load double, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8
  %380 = fptrunc double %379 to float
  ret float %380
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local double @_Z5pgainlP6PointsdPliP17pthread_barrier_t(i64 %0, %struct.Points* %1, double %2, i64* %3, i32 %4, %union.pthread_barrier_t* %5) #4 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.Points*, align 8
  %9 = alloca double, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.pthread_barrier_t*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  %30 = alloca float, align 4
  %31 = alloca %struct.Point, align 8
  %32 = alloca %struct.Point, align 8
  %33 = alloca float, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i8, align 1
  %41 = alloca %struct.Point, align 8
  %42 = alloca %struct.Point, align 8
  %43 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.Points* %1, %struct.Points** %8, align 8
  store double %2, double* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store %union.pthread_barrier_t* %5, %union.pthread_barrier_t** %12, align 8
  %44 = load %struct.Points*, %struct.Points** %8, align 8
  %45 = getelementptr inbounds %struct.Points, %struct.Points* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @_ZL5nproc, align 4
  %48 = sext i32 %47 to i64
  %49 = sdiv i64 %46, %48
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %50, %52
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %13, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %15, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @_ZL5nproc, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %6
  %62 = load %struct.Points*, %struct.Points** %8, align 8
  %63 = getelementptr inbounds %struct.Points, %struct.Points* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %15, align 8
  br label %65

65:                                               ; preds = %61, %6
  store i32 0, i32* %17, align 4
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 2
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %18, align 4
  store i32 4, i32* %19, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = srem i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = sdiv i32 %76, %77
  %79 = add nsw i32 %78, 1
  %80 = mul nsw i32 %75, %79
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %74, %65
  %82 = load i32, i32* %18, align 4
  %83 = sub nsw i32 %82, 2
  store i32 %83, i32* %20, align 4
  store double 0.000000e+00, double* %21, align 8
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* @_ZL5nproc, align 4
  %89 = add nsw i32 %88, 1
  %90 = mul nsw i32 %87, %89
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 8
  %93 = call noalias i8* @malloc(i64 %92) #3
  %94 = bitcast i8* %93 to double*
  store double* %94, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  store double 0.000000e+00, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  store i32 0, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4
  br label %95

95:                                               ; preds = %86, %81
  store i32 0, i32* %22, align 4
  %96 = load i64, i64* %14, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %23, align 4
  br label %98

98:                                               ; preds = %118, %95
  %99 = load i32, i32* %23, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %15, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %98
  %104 = load i8*, i8** @_ZL9is_center, align 8
  %105 = load i32, i32* %23, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = trunc i8 %108 to i1
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i32, i32* %22, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %22, align 4
  %113 = load i32*, i32** @_ZL12center_table, align 8
  %114 = load i32, i32* %23, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %111, i32* %116, align 4
  br label %117

117:                                              ; preds = %110, %103
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %23, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %23, align 4
  br label %98

121:                                              ; preds = %98
  %122 = load i32, i32* %22, align 4
  %123 = sitofp i32 %122 to double
  %124 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %18, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %124, i64 %128
  store double %123, double* %129, align 8
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %161

132:                                              ; preds = %121
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %133

133:                                              ; preds = %157, %132
  %134 = load i32, i32* %25, align 4
  %135 = load i32, i32* @_ZL5nproc, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %160

137:                                              ; preds = %133
  %138 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %18, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %138, i64 %142
  %144 = load double, double* %143, align 8
  %145 = fptosi double %144 to i32
  store i32 %145, i32* %26, align 4
  %146 = load i32, i32* %24, align 4
  %147 = sitofp i32 %146 to double
  %148 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %18, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds double, double* %148, i64 %152
  store double %147, double* %153, align 8
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %24, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %24, align 4
  br label %157

157:                                              ; preds = %137
  %158 = load i32, i32* %25, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %25, align 4
  br label %133

160:                                              ; preds = %133
  br label %161

161:                                              ; preds = %160, %121
  %162 = load i64, i64* %14, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %27, align 4
  br label %164

164:                                              ; preds = %192, %161
  %165 = load i32, i32* %27, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %15, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %195

169:                                              ; preds = %164
  %170 = load i8*, i8** @_ZL9is_center, align 8
  %171 = load i32, i32* %27, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = trunc i8 %174 to i1
  br i1 %175, label %176, label %191

176:                                              ; preds = %169
  %177 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %18, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %177, i64 %181
  %183 = load double, double* %182, align 8
  %184 = fptosi double %183 to i32
  %185 = load i32*, i32** @_ZL12center_table, align 8
  %186 = load i32, i32* %27, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %184
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %176, %169
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %27, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %27, align 4
  br label %164

195:                                              ; preds = %164
  %196 = load i8*, i8** @_ZL17switch_membership, align 8
  %197 = load i64, i64* %14, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  %199 = load i64, i64* %15, align 8
  %200 = load i64, i64* %14, align 8
  %201 = sub nsw i64 %199, %200
  %202 = mul i64 %201, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %198, i8 0, i64 %202, i1 false)
  %203 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %18, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %203, i64 %207
  %209 = bitcast double* %208 to i8*
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %209, i8 0, i64 %212, i1 false)
  %213 = load i32, i32* %11, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %195
  %216 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %217 = load i32, i32* @_ZL5nproc, align 4
  %218 = load i32, i32* %18, align 4
  %219 = mul nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds double, double* %216, i64 %220
  %222 = bitcast double* %221 to i8*
  %223 = load i32, i32* %18, align 4
  %224 = sext i32 %223 to i64
  %225 = mul i64 %224, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %222, i8 0, i64 %225, i1 false)
  br label %226

226:                                              ; preds = %215, %195
  %227 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %18, align 4
  %230 = mul nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds double, double* %227, i64 %231
  store double* %232, double** %28, align 8
  %233 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %234 = load i32, i32* @_ZL5nproc, align 4
  %235 = load i32, i32* %18, align 4
  %236 = mul nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds double, double* %233, i64 %237
  store double* %238, double** %29, align 8
  %239 = load i64, i64* %14, align 8
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %16, align 4
  br label %241

241:                                              ; preds = %322, %226
  %242 = load i32, i32* %16, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* %15, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %325

246:                                              ; preds = %241
  %247 = load %struct.Points*, %struct.Points** %8, align 8
  %248 = getelementptr inbounds %struct.Points, %struct.Points* %247, i32 0, i32 2
  %249 = load %struct.Point*, %struct.Point** %248, align 8
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.Point, %struct.Point* %249, i64 %251
  %253 = bitcast %struct.Point* %31 to i8*
  %254 = bitcast %struct.Point* %252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 %254, i64 32, i1 false)
  %255 = load %struct.Points*, %struct.Points** %8, align 8
  %256 = getelementptr inbounds %struct.Points, %struct.Points* %255, i32 0, i32 2
  %257 = load %struct.Point*, %struct.Point** %256, align 8
  %258 = load i64, i64* %7, align 8
  %259 = getelementptr inbounds %struct.Point, %struct.Point* %257, i64 %258
  %260 = bitcast %struct.Point* %32 to i8*
  %261 = bitcast %struct.Point* %259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %260, i8* align 8 %261, i64 32, i1 false)
  %262 = load %struct.Points*, %struct.Points** %8, align 8
  %263 = getelementptr inbounds %struct.Points, %struct.Points* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = call float @_Z4dist5PointS_i(%struct.Point* %31, %struct.Point* %32, i32 %264)
  %266 = load %struct.Points*, %struct.Points** %8, align 8
  %267 = getelementptr inbounds %struct.Points, %struct.Points* %266, i32 0, i32 2
  %268 = load %struct.Point*, %struct.Point** %267, align 8
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.Point, %struct.Point* %268, i64 %270
  %272 = getelementptr inbounds %struct.Point, %struct.Point* %271, i32 0, i32 0
  %273 = load float, float* %272, align 8
  %274 = fmul float %265, %273
  store float %274, float* %30, align 4
  %275 = load %struct.Points*, %struct.Points** %8, align 8
  %276 = getelementptr inbounds %struct.Points, %struct.Points* %275, i32 0, i32 2
  %277 = load %struct.Point*, %struct.Point** %276, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.Point, %struct.Point* %277, i64 %279
  %281 = getelementptr inbounds %struct.Point, %struct.Point* %280, i32 0, i32 3
  %282 = load float, float* %281, align 8
  store float %282, float* %33, align 4
  %283 = load float, float* %30, align 4
  %284 = load float, float* %33, align 4
  %285 = fcmp olt float %283, %284
  br i1 %285, label %286, label %297

286:                                              ; preds = %246
  %287 = load i8*, i8** @_ZL17switch_membership, align 8
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  store i8 1, i8* %290, align 1
  %291 = load float, float* %30, align 4
  %292 = load float, float* %33, align 4
  %293 = fsub float %291, %292
  %294 = fpext float %293 to double
  %295 = load double, double* %21, align 8
  %296 = fadd double %295, %294
  store double %296, double* %21, align 8
  br label %321

297:                                              ; preds = %246
  %298 = load %struct.Points*, %struct.Points** %8, align 8
  %299 = getelementptr inbounds %struct.Points, %struct.Points* %298, i32 0, i32 2
  %300 = load %struct.Point*, %struct.Point** %299, align 8
  %301 = load i32, i32* %16, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.Point, %struct.Point* %300, i64 %302
  %304 = getelementptr inbounds %struct.Point, %struct.Point* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %34, align 4
  %307 = load float, float* %33, align 4
  %308 = load float, float* %30, align 4
  %309 = fsub float %307, %308
  %310 = fpext float %309 to double
  %311 = load double*, double** %28, align 8
  %312 = load i32*, i32** @_ZL12center_table, align 8
  %313 = load i32, i32* %34, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds double, double* %311, i64 %317
  %319 = load double, double* %318, align 8
  %320 = fadd double %319, %310
  store double %320, double* %318, align 8
  br label %321

321:                                              ; preds = %297, %286
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %16, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %16, align 4
  br label %241

325:                                              ; preds = %241
  %326 = load i64, i64* %14, align 8
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %35, align 4
  br label %328

328:                                              ; preds = %385, %325
  %329 = load i32, i32* %35, align 4
  %330 = sext i32 %329 to i64
  %331 = load i64, i64* %15, align 8
  %332 = icmp slt i64 %330, %331
  br i1 %332, label %333, label %388

333:                                              ; preds = %328
  %334 = load i8*, i8** @_ZL9is_center, align 8
  %335 = load i32, i32* %35, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  %338 = load i8, i8* %337, align 1
  %339 = trunc i8 %338 to i1
  br i1 %339, label %340, label %384

340:                                              ; preds = %333
  %341 = load double, double* %9, align 8
  store double %341, double* %36, align 8
  store i32 0, i32* %37, align 4
  br label %342

342:                                              ; preds = %362, %340
  %343 = load i32, i32* %37, align 4
  %344 = load i32, i32* @_ZL5nproc, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %365

346:                                              ; preds = %342
  %347 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %348 = load i32*, i32** @_ZL12center_table, align 8
  %349 = load i32, i32* %35, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %37, align 4
  %354 = load i32, i32* %18, align 4
  %355 = mul nsw i32 %353, %354
  %356 = add nsw i32 %352, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds double, double* %347, i64 %357
  %359 = load double, double* %358, align 8
  %360 = load double, double* %36, align 8
  %361 = fadd double %360, %359
  store double %361, double* %36, align 8
  br label %362

362:                                              ; preds = %346
  %363 = load i32, i32* %37, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %37, align 4
  br label %342

365:                                              ; preds = %342
  %366 = load double, double* %36, align 8
  %367 = load double*, double** %29, align 8
  %368 = load i32*, i32** @_ZL12center_table, align 8
  %369 = load i32, i32* %35, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds double, double* %367, i64 %373
  store double %366, double* %374, align 8
  %375 = load double, double* %36, align 8
  %376 = fcmp ogt double %375, 0.000000e+00
  br i1 %376, label %377, label %383

377:                                              ; preds = %365
  %378 = load i32, i32* %17, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %17, align 4
  %380 = load double, double* %36, align 8
  %381 = load double, double* %21, align 8
  %382 = fsub double %381, %380
  store double %382, double* %21, align 8
  br label %383

383:                                              ; preds = %377, %365
  br label %384

384:                                              ; preds = %383, %333
  br label %385

385:                                              ; preds = %384
  %386 = load i32, i32* %35, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %35, align 4
  br label %328

388:                                              ; preds = %328
  %389 = load i32, i32* %17, align 4
  %390 = sitofp i32 %389 to double
  %391 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %392 = load i32, i32* %11, align 4
  %393 = load i32, i32* %18, align 4
  %394 = mul nsw i32 %392, %393
  %395 = load i32, i32* %20, align 4
  %396 = add nsw i32 %394, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds double, double* %391, i64 %397
  store double %390, double* %398, align 8
  %399 = load double, double* %21, align 8
  %400 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %401 = load i32, i32* %11, align 4
  %402 = load i32, i32* %18, align 4
  %403 = mul nsw i32 %401, %402
  %404 = load i32, i32* %20, align 4
  %405 = add nsw i32 %403, %404
  %406 = add nsw i32 %405, 1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds double, double* %400, i64 %407
  store double %399, double* %408, align 8
  %409 = load i32, i32* %11, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %446

411:                                              ; preds = %388
  %412 = load double, double* %9, align 8
  store double %412, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  store i32 0, i32* %38, align 4
  br label %413

413:                                              ; preds = %442, %411
  %414 = load i32, i32* %38, align 4
  %415 = load i32, i32* @_ZL5nproc, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %445

417:                                              ; preds = %413
  %418 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %419 = load i32, i32* %38, align 4
  %420 = load i32, i32* %18, align 4
  %421 = mul nsw i32 %419, %420
  %422 = load i32, i32* %20, align 4
  %423 = add nsw i32 %421, %422
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds double, double* %418, i64 %424
  %426 = load double, double* %425, align 8
  %427 = fptosi double %426 to i32
  %428 = load i32, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4
  %429 = add nsw i32 %428, %427
  store i32 %429, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4
  %430 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %431 = load i32, i32* %38, align 4
  %432 = load i32, i32* %18, align 4
  %433 = mul nsw i32 %431, %432
  %434 = load i32, i32* %20, align 4
  %435 = add nsw i32 %433, %434
  %436 = add nsw i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds double, double* %430, i64 %437
  %439 = load double, double* %438, align 8
  %440 = load double, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  %441 = fadd double %440, %439
  store double %441, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  br label %442

442:                                              ; preds = %417
  %443 = load i32, i32* %38, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %38, align 4
  br label %413

445:                                              ; preds = %413
  br label %446

446:                                              ; preds = %445, %388
  %447 = load double, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  %448 = fcmp olt double %447, 0.000000e+00
  br i1 %448, label %449, label %591

449:                                              ; preds = %446
  %450 = load i64, i64* %14, align 8
  %451 = trunc i64 %450 to i32
  store i32 %451, i32* %39, align 4
  br label %452

452:                                              ; preds = %529, %449
  %453 = load i32, i32* %39, align 4
  %454 = sext i32 %453 to i64
  %455 = load i64, i64* %15, align 8
  %456 = icmp slt i64 %454, %455
  br i1 %456, label %457, label %532

457:                                              ; preds = %452
  %458 = load double*, double** %29, align 8
  %459 = load i32*, i32** @_ZL12center_table, align 8
  %460 = load %struct.Points*, %struct.Points** %8, align 8
  %461 = getelementptr inbounds %struct.Points, %struct.Points* %460, i32 0, i32 2
  %462 = load %struct.Point*, %struct.Point** %461, align 8
  %463 = load i32, i32* %39, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.Point, %struct.Point* %462, i64 %464
  %466 = getelementptr inbounds %struct.Point, %struct.Point* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = getelementptr inbounds i32, i32* %459, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds double, double* %458, i64 %470
  %472 = load double, double* %471, align 8
  %473 = fcmp ogt double %472, 0.000000e+00
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %40, align 1
  %475 = load i8*, i8** @_ZL17switch_membership, align 8
  %476 = load i32, i32* %39, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8, i8* %475, i64 %477
  %479 = load i8, i8* %478, align 1
  %480 = trunc i8 %479 to i1
  br i1 %480, label %484, label %481

481:                                              ; preds = %457
  %482 = load i8, i8* %40, align 1
  %483 = trunc i8 %482 to i1
  br i1 %483, label %484, label %528

484:                                              ; preds = %481, %457
  %485 = load %struct.Points*, %struct.Points** %8, align 8
  %486 = getelementptr inbounds %struct.Points, %struct.Points* %485, i32 0, i32 2
  %487 = load %struct.Point*, %struct.Point** %486, align 8
  %488 = load i32, i32* %39, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.Point, %struct.Point* %487, i64 %489
  %491 = getelementptr inbounds %struct.Point, %struct.Point* %490, i32 0, i32 0
  %492 = load float, float* %491, align 8
  %493 = load %struct.Points*, %struct.Points** %8, align 8
  %494 = getelementptr inbounds %struct.Points, %struct.Points* %493, i32 0, i32 2
  %495 = load %struct.Point*, %struct.Point** %494, align 8
  %496 = load i32, i32* %39, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.Point, %struct.Point* %495, i64 %497
  %499 = bitcast %struct.Point* %41 to i8*
  %500 = bitcast %struct.Point* %498 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %499, i8* align 8 %500, i64 32, i1 false)
  %501 = load %struct.Points*, %struct.Points** %8, align 8
  %502 = getelementptr inbounds %struct.Points, %struct.Points* %501, i32 0, i32 2
  %503 = load %struct.Point*, %struct.Point** %502, align 8
  %504 = load i64, i64* %7, align 8
  %505 = getelementptr inbounds %struct.Point, %struct.Point* %503, i64 %504
  %506 = bitcast %struct.Point* %42 to i8*
  %507 = bitcast %struct.Point* %505 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %506, i8* align 8 %507, i64 32, i1 false)
  %508 = load %struct.Points*, %struct.Points** %8, align 8
  %509 = getelementptr inbounds %struct.Points, %struct.Points* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = call float @_Z4dist5PointS_i(%struct.Point* %41, %struct.Point* %42, i32 %510)
  %512 = fmul float %492, %511
  %513 = load %struct.Points*, %struct.Points** %8, align 8
  %514 = getelementptr inbounds %struct.Points, %struct.Points* %513, i32 0, i32 2
  %515 = load %struct.Point*, %struct.Point** %514, align 8
  %516 = load i32, i32* %39, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.Point, %struct.Point* %515, i64 %517
  %519 = getelementptr inbounds %struct.Point, %struct.Point* %518, i32 0, i32 3
  store float %512, float* %519, align 8
  %520 = load i64, i64* %7, align 8
  %521 = load %struct.Points*, %struct.Points** %8, align 8
  %522 = getelementptr inbounds %struct.Points, %struct.Points* %521, i32 0, i32 2
  %523 = load %struct.Point*, %struct.Point** %522, align 8
  %524 = load i32, i32* %39, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.Point, %struct.Point* %523, i64 %525
  %527 = getelementptr inbounds %struct.Point, %struct.Point* %526, i32 0, i32 2
  store i64 %520, i64* %527, align 8
  br label %528

528:                                              ; preds = %484, %481
  br label %529

529:                                              ; preds = %528
  %530 = load i32, i32* %39, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %39, align 4
  br label %452

532:                                              ; preds = %452
  %533 = load i64, i64* %14, align 8
  %534 = trunc i64 %533 to i32
  store i32 %534, i32* %43, align 4
  br label %535

535:                                              ; preds = %564, %532
  %536 = load i32, i32* %43, align 4
  %537 = sext i32 %536 to i64
  %538 = load i64, i64* %15, align 8
  %539 = icmp slt i64 %537, %538
  br i1 %539, label %540, label %567

540:                                              ; preds = %535
  %541 = load i8*, i8** @_ZL9is_center, align 8
  %542 = load i32, i32* %43, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8, i8* %541, i64 %543
  %545 = load i8, i8* %544, align 1
  %546 = trunc i8 %545 to i1
  br i1 %546, label %547, label %563

547:                                              ; preds = %540
  %548 = load double*, double** %29, align 8
  %549 = load i32*, i32** @_ZL12center_table, align 8
  %550 = load i32, i32* %43, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds double, double* %548, i64 %554
  %556 = load double, double* %555, align 8
  %557 = fcmp ogt double %556, 0.000000e+00
  br i1 %557, label %558, label %563

558:                                              ; preds = %547
  %559 = load i8*, i8** @_ZL9is_center, align 8
  %560 = load i32, i32* %43, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i8, i8* %559, i64 %561
  store i8 0, i8* %562, align 1
  br label %563

563:                                              ; preds = %558, %547, %540
  br label %564

564:                                              ; preds = %563
  %565 = load i32, i32* %43, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %43, align 4
  br label %535

567:                                              ; preds = %535
  %568 = load i64, i64* %7, align 8
  %569 = load i64, i64* %14, align 8
  %570 = icmp sge i64 %568, %569
  br i1 %570, label %571, label %579

571:                                              ; preds = %567
  %572 = load i64, i64* %7, align 8
  %573 = load i64, i64* %15, align 8
  %574 = icmp slt i64 %572, %573
  br i1 %574, label %575, label %579

575:                                              ; preds = %571
  %576 = load i8*, i8** @_ZL9is_center, align 8
  %577 = load i64, i64* %7, align 8
  %578 = getelementptr inbounds i8, i8* %576, i64 %577
  store i8 1, i8* %578, align 1
  br label %579

579:                                              ; preds = %575, %571, %567
  %580 = load i32, i32* %11, align 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %590

582:                                              ; preds = %579
  %583 = load i64*, i64** %10, align 8
  %584 = load i64, i64* %583, align 8
  %585 = add nsw i64 %584, 1
  %586 = load i32, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4
  %587 = sext i32 %586 to i64
  %588 = sub nsw i64 %585, %587
  %589 = load i64*, i64** %10, align 8
  store i64 %588, i64* %589, align 8
  br label %590

590:                                              ; preds = %582, %579
  br label %596

591:                                              ; preds = %446
  %592 = load i32, i32* %11, align 4
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %591
  store double 0.000000e+00, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  br label %595

595:                                              ; preds = %594, %591
  br label %596

596:                                              ; preds = %595, %590
  %597 = load i32, i32* %11, align 4
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %596
  %600 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8
  %601 = bitcast double* %600 to i8*
  call void @free(i8* %601) #3
  br label %602

602:                                              ; preds = %599, %596
  %603 = load double, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8
  %604 = fneg double %603
  ret double %604
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone
define dso_local float @_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t(%struct.Points* %0, i32* %1, i32 %2, float %3, i64* %4, double %5, i64 %6, float %7, i32 %8, %union.pthread_barrier_t* %9) #4 {
  %11 = alloca %struct.Points*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i64*, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.pthread_barrier_t*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca double, align 8
  %24 = alloca i64, align 8
  store %struct.Points* %0, %struct.Points** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store float %3, float* %14, align 4
  store i64* %4, i64** %15, align 8
  store double %5, double* %16, align 8
  store i64 %6, i64* %17, align 8
  store float %7, float* %18, align 4
  store i32 %8, i32* %19, align 4
  store %union.pthread_barrier_t* %9, %union.pthread_barrier_t** %20, align 8
  %25 = load double, double* %16, align 8
  store double %25, double* %23, align 8
  br label %26

26:                                               ; preds = %70, %10
  %27 = load double, double* %23, align 8
  %28 = load double, double* %16, align 8
  %29 = fdiv double %27, %28
  %30 = load float, float* %18, align 4
  %31 = fpext float %30 to double
  %32 = fmul double 1.000000e+00, %31
  %33 = fcmp ogt double %29, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %26
  store double 0.000000e+00, double* %23, align 8
  %35 = load %struct.Points*, %struct.Points** %11, align 8
  %36 = getelementptr inbounds %struct.Points, %struct.Points* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %24, align 8
  %38 = load i32, i32* %19, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %13, align 4
  call void @_Z10intshufflePii(i32* %41, i32 %42)
  br label %43

43:                                               ; preds = %40, %34
  store i64 0, i64* %21, align 8
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i64, i64* %21, align 8
  %46 = load i64, i64* %17, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load i64, i64* %21, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = srem i64 %49, %51
  store i64 %52, i64* %22, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i64, i64* %22, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.Points*, %struct.Points** %11, align 8
  %59 = load float, float* %14, align 4
  %60 = fpext float %59 to double
  %61 = load i64*, i64** %15, align 8
  %62 = load i32, i32* %19, align 4
  %63 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %20, align 8
  %64 = call double @_Z5pgainlP6PointsdPliP17pthread_barrier_t(i64 %57, %struct.Points* %58, double %60, i64* %61, i32 %62, %union.pthread_barrier_t* %63)
  %65 = load double, double* %23, align 8
  %66 = fadd double %65, %64
  store double %66, double* %23, align 8
  br label %67

67:                                               ; preds = %48
  %68 = load i64, i64* %21, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %21, align 8
  br label %44

70:                                               ; preds = %44
  %71 = load double, double* %23, align 8
  %72 = load double, double* %16, align 8
  %73 = fsub double %72, %71
  store double %73, double* %16, align 8
  br label %26

74:                                               ; preds = %26
  %75 = load double, double* %16, align 8
  %76 = fptrunc double %75 to float
  ret float %76
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @_Z19selectfeasible_fastP6PointsPPiiiP17pthread_barrier_t(%struct.Points* %0, i32** %1, i32 %2, i32 %3, %union.pthread_barrier_t* %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Points*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.pthread_barrier_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %union.pthread_barrier_t* %4, %union.pthread_barrier_t** %11, align 8
  %24 = load %struct.Points*, %struct.Points** %7, align 8
  %25 = getelementptr inbounds %struct.Points, %struct.Points* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sitofp i32 %28 to double
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 3, %30
  %32 = sitofp i32 %31 to double
  %33 = load i32, i32* %9, align 4
  %34 = sitofp i32 %33 to double
  %35 = call double @log(double %34) #3
  %36 = fmul double %32, %35
  %37 = fcmp ogt double %29, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 3, %39
  %41 = sitofp i32 %40 to double
  %42 = load i32, i32* %9, align 4
  %43 = sitofp i32 %42 to double
  %44 = call double @log(double %43) #3
  %45 = fmul double %41, %44
  %46 = fptosi double %45 to i32
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %38, %5
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = call noalias i8* @malloc(i64 %50) #3
  %52 = bitcast i8* %51 to i32*
  %53 = load i32**, i32*** %8, align 8
  store i32* %52, i32** %53, align 8
  store i64 0, i64* %15, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %16, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.Points*, %struct.Points** %7, align 8
  %59 = getelementptr inbounds %struct.Points, %struct.Points* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %47
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %21, align 4
  br label %65

65:                                               ; preds = %77, %62
  %66 = load i32, i32* %21, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %16, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i32, i32* %21, align 4
  %72 = load i32**, i32*** %8, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %21, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %6, align 4
  br label %201

82:                                               ; preds = %47
  %83 = load %struct.Points*, %struct.Points** %7, align 8
  %84 = getelementptr inbounds %struct.Points, %struct.Points* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = mul i64 4, %85
  %87 = call noalias i8* @malloc(i64 %86) #3
  %88 = bitcast i8* %87 to float*
  store float* %88, float** %13, align 8
  %89 = load %struct.Points*, %struct.Points** %7, align 8
  %90 = getelementptr inbounds %struct.Points, %struct.Points* %89, i32 0, i32 2
  %91 = load %struct.Point*, %struct.Point** %90, align 8
  %92 = getelementptr inbounds %struct.Point, %struct.Point* %91, i64 0
  %93 = getelementptr inbounds %struct.Point, %struct.Point* %92, i32 0, i32 0
  %94 = load float, float* %93, align 8
  %95 = load float*, float** %13, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  store float %94, float* %96, align 4
  store float 0.000000e+00, float* %14, align 4
  store i32 1, i32* %22, align 4
  br label %97

97:                                               ; preds = %124, %82
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.Points*, %struct.Points** %7, align 8
  %101 = getelementptr inbounds %struct.Points, %struct.Points* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %97
  %105 = load float*, float** %13, align 8
  %106 = load i32, i32* %22, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %105, i64 %108
  %110 = load float, float* %109, align 4
  %111 = load %struct.Points*, %struct.Points** %7, align 8
  %112 = getelementptr inbounds %struct.Points, %struct.Points* %111, i32 0, i32 2
  %113 = load %struct.Point*, %struct.Point** %112, align 8
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.Point, %struct.Point* %113, i64 %115
  %117 = getelementptr inbounds %struct.Point, %struct.Point* %116, i32 0, i32 0
  %118 = load float, float* %117, align 8
  %119 = fadd float %110, %118
  %120 = load float*, float** %13, align 8
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  store float %119, float* %123, align 4
  br label %124

124:                                              ; preds = %104
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %22, align 4
  br label %97

127:                                              ; preds = %97
  %128 = load float*, float** %13, align 8
  %129 = load %struct.Points*, %struct.Points** %7, align 8
  %130 = getelementptr inbounds %struct.Points, %struct.Points* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %131, 1
  %133 = getelementptr inbounds float, float* %128, i64 %132
  %134 = load float, float* %133, align 4
  store float %134, float* %14, align 4
  %135 = load i64, i64* %15, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %23, align 4
  br label %137

137:                                              ; preds = %194, %127
  %138 = load i32, i32* %23, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %16, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %197

142:                                              ; preds = %137
  %143 = call i64 @lrand48() #3
  %144 = sitofp i64 %143 to float
  %145 = fdiv float %144, 0x41E0000000000000
  %146 = load float, float* %14, align 4
  %147 = fmul float %145, %146
  store float %147, float* %17, align 4
  store i32 0, i32* %18, align 4
  %148 = load %struct.Points*, %struct.Points** %7, align 8
  %149 = getelementptr inbounds %struct.Points, %struct.Points* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, 1
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %19, align 4
  %153 = load float*, float** %13, align 8
  %154 = getelementptr inbounds float, float* %153, i64 0
  %155 = load float, float* %154, align 4
  %156 = load float, float* %17, align 4
  %157 = fcmp ogt float %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %142
  %159 = load i32**, i32*** %8, align 8
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %23, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 0, i32* %163, align 4
  br label %194

164:                                              ; preds = %142
  br label %165

165:                                              ; preds = %186, %164
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* %19, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %165
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %171, %172
  %174 = sdiv i32 %173, 2
  store i32 %174, i32* %20, align 4
  %175 = load float*, float** %13, align 8
  %176 = load i32, i32* %20, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  %179 = load float, float* %178, align 4
  %180 = load float, float* %17, align 4
  %181 = fcmp ogt float %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i32, i32* %20, align 4
  store i32 %183, i32* %19, align 4
  br label %186

184:                                              ; preds = %170
  %185 = load i32, i32* %20, align 4
  store i32 %185, i32* %18, align 4
  br label %186

186:                                              ; preds = %184, %182
  br label %165

187:                                              ; preds = %165
  %188 = load i32, i32* %19, align 4
  %189 = load i32**, i32*** %8, align 8
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %23, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %188, i32* %193, align 4
  br label %194

194:                                              ; preds = %187, %158
  %195 = load i32, i32* %23, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %23, align 4
  br label %137

197:                                              ; preds = %137
  %198 = load float*, float** %13, align 8
  %199 = bitcast float* %198 to i8*
  call void @free(i8* %199) #3
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %197, %80
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: noinline nounwind optnone
define dso_local float @_Z8pkmedianP6PointsllPliP17pthread_barrier_t(%struct.Points* %0, i64 %1, i64 %2, i64* %3, i32 %4, %union.pthread_barrier_t* %5) #4 {
  %7 = alloca float, align 4
  %8 = alloca %struct.Points*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.pthread_barrier_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca double, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.Point, align 8
  %28 = alloca %struct.Point, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store %union.pthread_barrier_t* %5, %union.pthread_barrier_t** %13, align 8
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = load i32, i32* @_ZL5nproc, align 4
  %36 = sext i32 %35 to i64
  %37 = call noalias i8* @calloc(i64 %36, i64 8) #3
  %38 = bitcast i8* %37 to double*
  store double* %38, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  br label %39

39:                                               ; preds = %34, %6
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %17, align 8
  %40 = load %struct.Points*, %struct.Points** %8, align 8
  %41 = getelementptr inbounds %struct.Points, %struct.Points* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %20, align 8
  %43 = load %struct.Points*, %struct.Points** %8, align 8
  %44 = getelementptr inbounds %struct.Points, %struct.Points* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %21, align 8
  %47 = load %struct.Points*, %struct.Points** %8, align 8
  %48 = getelementptr inbounds %struct.Points, %struct.Points* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @_ZL5nproc, align 4
  %51 = sext i32 %50 to i64
  %52 = sdiv i64 %49, %51
  store i64 %52, i64* %22, align 8
  %53 = load i64, i64* %22, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %53, %55
  store i64 %56, i64* %23, align 8
  %57 = load i64, i64* %23, align 8
  %58 = load i64, i64* %22, align 8
  %59 = add nsw i64 %57, %58
  store i64 %59, i64* %24, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @_ZL5nproc, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %39
  %65 = load %struct.Points*, %struct.Points** %8, align 8
  %66 = getelementptr inbounds %struct.Points, %struct.Points* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %24, align 8
  br label %68

68:                                               ; preds = %64, %39
  store double 0.000000e+00, double* %25, align 8
  %69 = load i64, i64* %23, align 8
  store i64 %69, i64* %26, align 8
  br label %70

70:                                               ; preds = %102, %68
  %71 = load i64, i64* %26, align 8
  %72 = load i64, i64* %24, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %105

74:                                               ; preds = %70
  %75 = load %struct.Points*, %struct.Points** %8, align 8
  %76 = getelementptr inbounds %struct.Points, %struct.Points* %75, i32 0, i32 2
  %77 = load %struct.Point*, %struct.Point** %76, align 8
  %78 = load i64, i64* %26, align 8
  %79 = getelementptr inbounds %struct.Point, %struct.Point* %77, i64 %78
  %80 = bitcast %struct.Point* %27 to i8*
  %81 = bitcast %struct.Point* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 32, i1 false)
  %82 = load %struct.Points*, %struct.Points** %8, align 8
  %83 = getelementptr inbounds %struct.Points, %struct.Points* %82, i32 0, i32 2
  %84 = load %struct.Point*, %struct.Point** %83, align 8
  %85 = getelementptr inbounds %struct.Point, %struct.Point* %84, i64 0
  %86 = bitcast %struct.Point* %28 to i8*
  %87 = bitcast %struct.Point* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 32, i1 false)
  %88 = load i64, i64* %21, align 8
  %89 = trunc i64 %88 to i32
  %90 = call float @_Z4dist5PointS_i(%struct.Point* %27, %struct.Point* %28, i32 %89)
  %91 = load %struct.Points*, %struct.Points** %8, align 8
  %92 = getelementptr inbounds %struct.Points, %struct.Points* %91, i32 0, i32 2
  %93 = load %struct.Point*, %struct.Point** %92, align 8
  %94 = load i64, i64* %26, align 8
  %95 = getelementptr inbounds %struct.Point, %struct.Point* %93, i64 %94
  %96 = getelementptr inbounds %struct.Point, %struct.Point* %95, i32 0, i32 0
  %97 = load float, float* %96, align 8
  %98 = fmul float %90, %97
  %99 = fpext float %98 to double
  %100 = load double, double* %25, align 8
  %101 = fadd double %100, %99
  store double %101, double* %25, align 8
  br label %102

102:                                              ; preds = %74
  %103 = load i64, i64* %26, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %26, align 8
  br label %70

105:                                              ; preds = %70
  %106 = load double, double* %25, align 8
  %107 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  store double %106, double* %110, align 8
  store i32 0, i32* %29, align 4
  br label %111

111:                                              ; preds = %123, %105
  %112 = load i32, i32* %29, align 4
  %113 = load i32, i32* @_ZL5nproc, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %117 = load i32, i32* %29, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  %120 = load double, double* %119, align 8
  %121 = load double, double* %17, align 8
  %122 = fadd double %121, %120
  store double %122, double* %17, align 8
  br label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %29, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %29, align 4
  br label %111

126:                                              ; preds = %111
  store double 0.000000e+00, double* %18, align 8
  %127 = load double, double* %17, align 8
  %128 = load double, double* %18, align 8
  %129 = fadd double %127, %128
  %130 = fdiv double %129, 2.000000e+00
  store double %130, double* %19, align 8
  %131 = load %struct.Points*, %struct.Points** %8, align 8
  %132 = getelementptr inbounds %struct.Points, %struct.Points* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = icmp sle i64 %133, %134
  br i1 %135, label %136, label %170

136:                                              ; preds = %126
  %137 = load i64, i64* %23, align 8
  store i64 %137, i64* %30, align 8
  br label %138

138:                                              ; preds = %156, %136
  %139 = load i64, i64* %30, align 8
  %140 = load i64, i64* %24, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load i64, i64* %30, align 8
  %144 = load %struct.Points*, %struct.Points** %8, align 8
  %145 = getelementptr inbounds %struct.Points, %struct.Points* %144, i32 0, i32 2
  %146 = load %struct.Point*, %struct.Point** %145, align 8
  %147 = load i64, i64* %30, align 8
  %148 = getelementptr inbounds %struct.Point, %struct.Point* %146, i64 %147
  %149 = getelementptr inbounds %struct.Point, %struct.Point* %148, i32 0, i32 2
  store i64 %143, i64* %149, align 8
  %150 = load %struct.Points*, %struct.Points** %8, align 8
  %151 = getelementptr inbounds %struct.Points, %struct.Points* %150, i32 0, i32 2
  %152 = load %struct.Point*, %struct.Point** %151, align 8
  %153 = load i64, i64* %30, align 8
  %154 = getelementptr inbounds %struct.Point, %struct.Point* %152, i64 %153
  %155 = getelementptr inbounds %struct.Point, %struct.Point* %154, i32 0, i32 3
  store float 0.000000e+00, float* %155, align 8
  br label %156

156:                                              ; preds = %142
  %157 = load i64, i64* %30, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %30, align 8
  br label %138

159:                                              ; preds = %138
  store double 0.000000e+00, double* %15, align 8
  %160 = load i32, i32* %12, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %164 = bitcast double* %163 to i8*
  call void @free(i8* %164) #3
  %165 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %166 = load i64*, i64** %11, align 8
  store i64 %165, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %159
  %168 = load double, double* %15, align 8
  %169 = fptrunc double %168 to float
  store float %169, float* %7, align 4
  br label %390

170:                                              ; preds = %126
  %171 = load i32, i32* %12, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load %struct.Points*, %struct.Points** %8, align 8
  call void @_Z7shuffleP6Points(%struct.Points* %174)
  br label %175

175:                                              ; preds = %173, %170
  %176 = load %struct.Points*, %struct.Points** %8, align 8
  %177 = load double, double* %19, align 8
  %178 = fptrunc double %177 to float
  %179 = load i32, i32* %12, align 4
  %180 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %181 = call float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* %176, float %178, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 %179, %union.pthread_barrier_t* %180)
  %182 = fpext float %181 to double
  store double %182, double* %15, align 8
  store i32 0, i32* %14, align 4
  br label %183

183:                                              ; preds = %192, %175
  %184 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %185 = load i64, i64* %9, align 8
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i32, i32* %14, align 4
  %189 = icmp slt i32 %188, 1
  br label %190

190:                                              ; preds = %187, %183
  %191 = phi i1 [ false, %183 ], [ %189, %187 ]
  br i1 %191, label %192, label %202

192:                                              ; preds = %190
  %193 = load %struct.Points*, %struct.Points** %8, align 8
  %194 = load double, double* %19, align 8
  %195 = fptrunc double %194 to float
  %196 = load i32, i32* %12, align 4
  %197 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %198 = call float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* %193, float %195, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 %196, %union.pthread_barrier_t* %197)
  %199 = fpext float %198 to double
  store double %199, double* %15, align 8
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %183

202:                                              ; preds = %190
  br label %203

203:                                              ; preds = %221, %202
  %204 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %205 = load i64, i64* %9, align 8
  %206 = icmp slt i64 %204, %205
  br i1 %206, label %207, label %231

207:                                              ; preds = %203
  %208 = load i32, i32* %14, align 4
  %209 = icmp sge i32 %208, 1
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load double, double* %19, align 8
  store double %211, double* %17, align 8
  %212 = load double, double* %17, align 8
  %213 = load double, double* %18, align 8
  %214 = fadd double %212, %213
  %215 = fdiv double %214, 2.000000e+00
  store double %215, double* %19, align 8
  store i32 0, i32* %14, align 4
  br label %216

216:                                              ; preds = %210, %207
  %217 = load i32, i32* %12, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load %struct.Points*, %struct.Points** %8, align 8
  call void @_Z7shuffleP6Points(%struct.Points* %220)
  br label %221

221:                                              ; preds = %219, %216
  %222 = load %struct.Points*, %struct.Points** %8, align 8
  %223 = load double, double* %19, align 8
  %224 = fptrunc double %223 to float
  %225 = load i32, i32* %12, align 4
  %226 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %227 = call float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* %222, float %224, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 %225, %union.pthread_barrier_t* %226)
  %228 = fpext float %227 to double
  store double %228, double* %15, align 8
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  br label %203

231:                                              ; preds = %203
  %232 = load i32, i32* %12, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %263

234:                                              ; preds = %231
  %235 = load %struct.Points*, %struct.Points** %8, align 8
  %236 = load i64, i64* %9, align 8
  %237 = trunc i64 %236 to i32
  %238 = load i32, i32* %12, align 4
  %239 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %240 = call i32 @_Z19selectfeasible_fastP6PointsPPiiiP17pthread_barrier_t(%struct.Points* %235, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, i32 %237, i32 %238, %union.pthread_barrier_t* %239)
  store i32 %240, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4
  store i32 0, i32* %31, align 4
  br label %241

241:                                              ; preds = %259, %234
  %242 = load i32, i32* %31, align 4
  %243 = sext i32 %242 to i64
  %244 = load %struct.Points*, %struct.Points** %8, align 8
  %245 = getelementptr inbounds %struct.Points, %struct.Points* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp slt i64 %243, %246
  br i1 %247, label %248, label %262

248:                                              ; preds = %241
  %249 = load i8*, i8** @_ZL9is_center, align 8
  %250 = load %struct.Points*, %struct.Points** %8, align 8
  %251 = getelementptr inbounds %struct.Points, %struct.Points* %250, i32 0, i32 2
  %252 = load %struct.Point*, %struct.Point** %251, align 8
  %253 = load i32, i32* %31, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.Point, %struct.Point* %252, i64 %254
  %256 = getelementptr inbounds %struct.Point, %struct.Point* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds i8, i8* %249, i64 %257
  store i8 1, i8* %258, align 1
  br label %259

259:                                              ; preds = %248
  %260 = load i32, i32* %31, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %31, align 4
  br label %241

262:                                              ; preds = %241
  br label %263

263:                                              ; preds = %262, %231
  br label %264

264:                                              ; preds = %263, %376
  %265 = load double, double* %15, align 8
  store double %265, double* %16, align 8
  %266 = load %struct.Points*, %struct.Points** %8, align 8
  %267 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8
  %268 = load i32, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4
  %269 = load double, double* %19, align 8
  %270 = fptrunc double %269 to float
  %271 = load double, double* %15, align 8
  %272 = load i64, i64* %10, align 8
  %273 = mul nsw i64 3, %272
  %274 = sitofp i64 %273 to double
  %275 = load i64, i64* %10, align 8
  %276 = sitofp i64 %275 to double
  %277 = call double @log(double %276) #3
  %278 = fmul double %274, %277
  %279 = fptosi double %278 to i64
  %280 = load i32, i32* %12, align 4
  %281 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %282 = call float @_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t(%struct.Points* %266, i32* %267, i32 %268, float %270, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, double %271, i64 %279, float 0x3FB99999A0000000, i32 %280, %union.pthread_barrier_t* %281)
  %283 = fpext float %282 to double
  store double %283, double* %15, align 8
  %284 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %285 = sitofp i64 %284 to double
  %286 = load i64, i64* %10, align 8
  %287 = sitofp i64 %286 to double
  %288 = fmul double 1.100000e+00, %287
  %289 = fcmp ole double %285, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %264
  %291 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %292 = sitofp i64 %291 to double
  %293 = load i64, i64* %9, align 8
  %294 = sitofp i64 %293 to double
  %295 = fmul double 9.000000e-01, %294
  %296 = fcmp oge double %292, %295
  br i1 %296, label %307, label %297

297:                                              ; preds = %290, %264
  %298 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %299 = load i64, i64* %10, align 8
  %300 = add nsw i64 %299, 2
  %301 = icmp sle i64 %298, %300
  br i1 %301, label %302, label %326

302:                                              ; preds = %297
  %303 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %304 = load i64, i64* %9, align 8
  %305 = sub nsw i64 %304, 2
  %306 = icmp sge i64 %303, %305
  br i1 %306, label %307, label %326

307:                                              ; preds = %302, %290
  %308 = load %struct.Points*, %struct.Points** %8, align 8
  %309 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8
  %310 = load i32, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4
  %311 = load double, double* %19, align 8
  %312 = fptrunc double %311 to float
  %313 = load double, double* %15, align 8
  %314 = load i64, i64* %10, align 8
  %315 = mul nsw i64 3, %314
  %316 = sitofp i64 %315 to double
  %317 = load i64, i64* %10, align 8
  %318 = sitofp i64 %317 to double
  %319 = call double @log(double %318) #3
  %320 = fmul double %316, %319
  %321 = fptosi double %320 to i64
  %322 = load i32, i32* %12, align 4
  %323 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %324 = call float @_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t(%struct.Points* %308, i32* %309, i32 %310, float %312, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, double %313, i64 %321, float 0x3F50624DE0000000, i32 %322, %union.pthread_barrier_t* %323)
  %325 = fpext float %324 to double
  store double %325, double* %15, align 8
  br label %326

326:                                              ; preds = %307, %302, %297
  %327 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %328 = load i64, i64* %10, align 8
  %329 = icmp sgt i64 %327, %328
  br i1 %329, label %330, label %344

330:                                              ; preds = %326
  %331 = load double, double* %19, align 8
  store double %331, double* %18, align 8
  %332 = load double, double* %17, align 8
  %333 = load double, double* %18, align 8
  %334 = fadd double %332, %333
  %335 = fdiv double %334, 2.000000e+00
  store double %335, double* %19, align 8
  %336 = load double, double* %19, align 8
  %337 = load double, double* %18, align 8
  %338 = fsub double %336, %337
  %339 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %340 = sitofp i64 %339 to double
  %341 = fmul double %338, %340
  %342 = load double, double* %15, align 8
  %343 = fadd double %342, %341
  store double %343, double* %15, align 8
  br label %344

344:                                              ; preds = %330, %326
  %345 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %346 = load i64, i64* %9, align 8
  %347 = icmp slt i64 %345, %346
  br i1 %347, label %348, label %362

348:                                              ; preds = %344
  %349 = load double, double* %19, align 8
  store double %349, double* %17, align 8
  %350 = load double, double* %17, align 8
  %351 = load double, double* %18, align 8
  %352 = fadd double %350, %351
  %353 = fdiv double %352, 2.000000e+00
  store double %353, double* %19, align 8
  %354 = load double, double* %19, align 8
  %355 = load double, double* %17, align 8
  %356 = fsub double %354, %355
  %357 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %358 = sitofp i64 %357 to double
  %359 = fmul double %356, %358
  %360 = load double, double* %15, align 8
  %361 = fadd double %360, %359
  store double %361, double* %15, align 8
  br label %362

362:                                              ; preds = %348, %344
  %363 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %364 = load i64, i64* %10, align 8
  %365 = icmp sle i64 %363, %364
  br i1 %365, label %366, label %370

366:                                              ; preds = %362
  %367 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %368 = load i64, i64* %9, align 8
  %369 = icmp sge i64 %367, %368
  br i1 %369, label %375, label %370

370:                                              ; preds = %366, %362
  %371 = load double, double* %18, align 8
  %372 = load double, double* %17, align 8
  %373 = fmul double 0x3FEFF7CED916872B, %372
  %374 = fcmp oge double %371, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %370, %366
  br label %377

376:                                              ; preds = %370
  br label %264

377:                                              ; preds = %375
  %378 = load i32, i32* %12, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %377
  %381 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8
  %382 = bitcast i32* %381 to i8*
  call void @free(i8* %382) #3
  %383 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %384 = bitcast double* %383 to i8*
  call void @free(i8* %384) #3
  %385 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %386 = load i64*, i64** %11, align 8
  store i64 %385, i64* %386, align 8
  br label %387

387:                                              ; preds = %380, %377
  %388 = load double, double* %15, align 8
  %389 = fptrunc double %388 to float
  store float %389, float* %7, align 4
  br label %390

390:                                              ; preds = %387, %167
  %391 = load float, float* %7, align 4
  ret float %391
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind optnone
define dso_local i32 @_Z11contcentersP6Points(%struct.Points* %0) #4 {
  %2 = alloca %struct.Points*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  store %struct.Points* %0, %struct.Points** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %138, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.Points*, %struct.Points** %2, align 8
  %9 = getelementptr inbounds %struct.Points, %struct.Points* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %141

12:                                               ; preds = %6
  %13 = load %struct.Points*, %struct.Points** %2, align 8
  %14 = getelementptr inbounds %struct.Points, %struct.Points* %13, i32 0, i32 2
  %15 = load %struct.Point*, %struct.Point** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.Point, %struct.Point* %15, i64 %16
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %137

22:                                               ; preds = %12
  %23 = load %struct.Points*, %struct.Points** %2, align 8
  %24 = getelementptr inbounds %struct.Points, %struct.Points* %23, i32 0, i32 2
  %25 = load %struct.Point*, %struct.Point** %24, align 8
  %26 = load %struct.Points*, %struct.Points** %2, align 8
  %27 = getelementptr inbounds %struct.Points, %struct.Points* %26, i32 0, i32 2
  %28 = load %struct.Point*, %struct.Point** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.Point, %struct.Point* %28, i64 %29
  %31 = getelementptr inbounds %struct.Point, %struct.Point* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.Point, %struct.Point* %25, i64 %32
  %34 = getelementptr inbounds %struct.Point, %struct.Point* %33, i32 0, i32 0
  %35 = load float, float* %34, align 8
  %36 = load %struct.Points*, %struct.Points** %2, align 8
  %37 = getelementptr inbounds %struct.Points, %struct.Points* %36, i32 0, i32 2
  %38 = load %struct.Point*, %struct.Point** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.Point, %struct.Point* %38, i64 %39
  %41 = getelementptr inbounds %struct.Point, %struct.Point* %40, i32 0, i32 0
  %42 = load float, float* %41, align 8
  %43 = fadd float %35, %42
  store float %43, float* %5, align 4
  %44 = load %struct.Points*, %struct.Points** %2, align 8
  %45 = getelementptr inbounds %struct.Points, %struct.Points* %44, i32 0, i32 2
  %46 = load %struct.Point*, %struct.Point** %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct.Point, %struct.Point* %46, i64 %47
  %49 = getelementptr inbounds %struct.Point, %struct.Point* %48, i32 0, i32 0
  %50 = load float, float* %49, align 8
  %51 = load float, float* %5, align 4
  %52 = fdiv float %50, %51
  store float %52, float* %5, align 4
  store i64 0, i64* %4, align 8
  br label %53

53:                                               ; preds = %112, %22
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.Points*, %struct.Points** %2, align 8
  %56 = getelementptr inbounds %struct.Points, %struct.Points* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %115

60:                                               ; preds = %53
  %61 = load float, float* %5, align 4
  %62 = fpext float %61 to double
  %63 = fsub double 1.000000e+00, %62
  %64 = load %struct.Points*, %struct.Points** %2, align 8
  %65 = getelementptr inbounds %struct.Points, %struct.Points* %64, i32 0, i32 2
  %66 = load %struct.Point*, %struct.Point** %65, align 8
  %67 = load %struct.Points*, %struct.Points** %2, align 8
  %68 = getelementptr inbounds %struct.Points, %struct.Points* %67, i32 0, i32 2
  %69 = load %struct.Point*, %struct.Point** %68, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds %struct.Point, %struct.Point* %69, i64 %70
  %72 = getelementptr inbounds %struct.Point, %struct.Point* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.Point, %struct.Point* %66, i64 %73
  %75 = getelementptr inbounds %struct.Point, %struct.Point* %74, i32 0, i32 1
  %76 = load float*, float** %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds float, float* %76, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = fmul double %80, %63
  %82 = fptrunc double %81 to float
  store float %82, float* %78, align 4
  %83 = load %struct.Points*, %struct.Points** %2, align 8
  %84 = getelementptr inbounds %struct.Points, %struct.Points* %83, i32 0, i32 2
  %85 = load %struct.Point*, %struct.Point** %84, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds %struct.Point, %struct.Point* %85, i64 %86
  %88 = getelementptr inbounds %struct.Point, %struct.Point* %87, i32 0, i32 1
  %89 = load float*, float** %88, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds float, float* %89, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load float, float* %5, align 4
  %94 = fmul float %92, %93
  %95 = load %struct.Points*, %struct.Points** %2, align 8
  %96 = getelementptr inbounds %struct.Points, %struct.Points* %95, i32 0, i32 2
  %97 = load %struct.Point*, %struct.Point** %96, align 8
  %98 = load %struct.Points*, %struct.Points** %2, align 8
  %99 = getelementptr inbounds %struct.Points, %struct.Points* %98, i32 0, i32 2
  %100 = load %struct.Point*, %struct.Point** %99, align 8
  %101 = load i64, i64* %3, align 8
  %102 = getelementptr inbounds %struct.Point, %struct.Point* %100, i64 %101
  %103 = getelementptr inbounds %struct.Point, %struct.Point* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.Point, %struct.Point* %97, i64 %104
  %106 = getelementptr inbounds %struct.Point, %struct.Point* %105, i32 0, i32 1
  %107 = load float*, float** %106, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds float, float* %107, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fadd float %110, %94
  store float %111, float* %109, align 4
  br label %112

112:                                              ; preds = %60
  %113 = load i64, i64* %4, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %4, align 8
  br label %53

115:                                              ; preds = %53
  %116 = load %struct.Points*, %struct.Points** %2, align 8
  %117 = getelementptr inbounds %struct.Points, %struct.Points* %116, i32 0, i32 2
  %118 = load %struct.Point*, %struct.Point** %117, align 8
  %119 = load i64, i64* %3, align 8
  %120 = getelementptr inbounds %struct.Point, %struct.Point* %118, i64 %119
  %121 = getelementptr inbounds %struct.Point, %struct.Point* %120, i32 0, i32 0
  %122 = load float, float* %121, align 8
  %123 = load %struct.Points*, %struct.Points** %2, align 8
  %124 = getelementptr inbounds %struct.Points, %struct.Points* %123, i32 0, i32 2
  %125 = load %struct.Point*, %struct.Point** %124, align 8
  %126 = load %struct.Points*, %struct.Points** %2, align 8
  %127 = getelementptr inbounds %struct.Points, %struct.Points* %126, i32 0, i32 2
  %128 = load %struct.Point*, %struct.Point** %127, align 8
  %129 = load i64, i64* %3, align 8
  %130 = getelementptr inbounds %struct.Point, %struct.Point* %128, i64 %129
  %131 = getelementptr inbounds %struct.Point, %struct.Point* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.Point, %struct.Point* %125, i64 %132
  %134 = getelementptr inbounds %struct.Point, %struct.Point* %133, i32 0, i32 0
  %135 = load float, float* %134, align 8
  %136 = fadd float %135, %122
  store float %136, float* %134, align 8
  br label %137

137:                                              ; preds = %115, %12
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %3, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %3, align 8
  br label %6

141:                                              ; preds = %6
  ret i32 0
}

; Function Attrs: noinline nounwind optnone
define dso_local void @_Z11copycentersP6PointsS0_Pll(%struct.Points* %0, %struct.Points* %1, i64* %2, i64 %3) #4 {
  %5 = alloca %struct.Points*, align 8
  %6 = alloca %struct.Points*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.Points* %0, %struct.Points** %5, align 8
  store %struct.Points* %1, %struct.Points** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.Points*, %struct.Points** %5, align 8
  %13 = getelementptr inbounds %struct.Points, %struct.Points* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call noalias i8* @calloc(i64 %14, i64 1) #3
  store i8* %15, i8** %11, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %32, %4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.Points*, %struct.Points** %5, align 8
  %19 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.Points*, %struct.Points** %5, align 8
  %25 = getelementptr inbounds %struct.Points, %struct.Points* %24, i32 0, i32 2
  %26 = load %struct.Point*, %struct.Point** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.Point, %struct.Point* %26, i64 %27
  %29 = getelementptr inbounds %struct.Point, %struct.Point* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %23, i64 %30
  store i8 1, i8* %31, align 1
  br label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.Points*, %struct.Points** %6, align 8
  %37 = getelementptr inbounds %struct.Points, %struct.Points* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %95, %35
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.Points*, %struct.Points** %5, align 8
  %42 = getelementptr inbounds %struct.Points, %struct.Points* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %94

51:                                               ; preds = %45
  %52 = load %struct.Points*, %struct.Points** %6, align 8
  %53 = getelementptr inbounds %struct.Points, %struct.Points* %52, i32 0, i32 2
  %54 = load %struct.Point*, %struct.Point** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.Point, %struct.Point* %54, i64 %55
  %57 = getelementptr inbounds %struct.Point, %struct.Point* %56, i32 0, i32 1
  %58 = load float*, float** %57, align 8
  %59 = bitcast float* %58 to i8*
  %60 = load %struct.Points*, %struct.Points** %5, align 8
  %61 = getelementptr inbounds %struct.Points, %struct.Points* %60, i32 0, i32 2
  %62 = load %struct.Point*, %struct.Point** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.Point, %struct.Point* %62, i64 %63
  %65 = getelementptr inbounds %struct.Point, %struct.Point* %64, i32 0, i32 1
  %66 = load float*, float** %65, align 8
  %67 = bitcast float* %66 to i8*
  %68 = load %struct.Points*, %struct.Points** %5, align 8
  %69 = getelementptr inbounds %struct.Points, %struct.Points* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %67, i64 %72, i1 false)
  %73 = load %struct.Points*, %struct.Points** %5, align 8
  %74 = getelementptr inbounds %struct.Points, %struct.Points* %73, i32 0, i32 2
  %75 = load %struct.Point*, %struct.Point** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.Point, %struct.Point* %75, i64 %76
  %78 = getelementptr inbounds %struct.Point, %struct.Point* %77, i32 0, i32 0
  %79 = load float, float* %78, align 8
  %80 = load %struct.Points*, %struct.Points** %6, align 8
  %81 = getelementptr inbounds %struct.Points, %struct.Points* %80, i32 0, i32 2
  %82 = load %struct.Point*, %struct.Point** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.Point, %struct.Point* %82, i64 %83
  %85 = getelementptr inbounds %struct.Point, %struct.Point* %84, i32 0, i32 0
  store float %79, float* %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %94

94:                                               ; preds = %51, %45
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %9, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %39

98:                                               ; preds = %39
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.Points*, %struct.Points** %6, align 8
  %101 = getelementptr inbounds %struct.Points, %struct.Points* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i8*, i8** %11, align 8
  call void @free(i8* %102) #3
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i8* @_Z14localSearchSubPv(i8* %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pkmedian_arg_t*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pkmedian_arg_t*
  store %struct.pkmedian_arg_t* %5, %struct.pkmedian_arg_t** %3, align 8
  %6 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %7 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %6, i32 0, i32 0
  %8 = load %struct.Points*, %struct.Points** %7, align 8
  %9 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %10 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %13 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %16 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %15, i32 0, i32 3
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %19 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %22 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %21, i32 0, i32 5
  %23 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %22, align 8
  %24 = call float @_Z8pkmedianP6PointsllPliP17pthread_barrier_t(%struct.Points* %8, i64 %11, i64 %14, i64* %17, i32 %20, %union.pthread_barrier_t* %23)
  ret i8* null
}

; Function Attrs: noinline optnone
define dso_local void @_Z11localSearchP6PointsllPl(%struct.Points* %0, i64 %1, i64 %2, i64* %3) #7 {
  %5 = alloca %struct.Points*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %union.pthread_barrier_t, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.pkmedian_arg_t*, align 8
  %12 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = load i32, i32* @_ZL5nproc, align 4
  %14 = sext i32 %13 to i64
  %15 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %14, i64 8)
  %16 = extractvalue { i64, i1 } %15, 1
  %17 = extractvalue { i64, i1 } %15, 0
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = call i8* @_Znam(i64 %18) #16
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %10, align 8
  %21 = load i32, i32* @_ZL5nproc, align 4
  %22 = sext i32 %21 to i64
  %23 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %22, i64 48)
  %24 = extractvalue { i64, i1 } %23, 1
  %25 = extractvalue { i64, i1 } %23, 0
  %26 = select i1 %24, i64 -1, i64 %25
  %27 = call i8* @_Znam(i64 %26) #16
  %28 = bitcast i8* %27 to %struct.pkmedian_arg_t*
  store %struct.pkmedian_arg_t* %28, %struct.pkmedian_arg_t** %11, align 8
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %73, %4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @_ZL5nproc, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %29
  %34 = load %struct.Points*, %struct.Points** %5, align 8
  %35 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %35, i64 %37
  %39 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %38, i32 0, i32 0
  store %struct.Points* %34, %struct.Points** %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %41, i64 %43
  %45 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %44, i32 0, i32 1
  store i64 %40, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %47, i64 %49
  %51 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %50, i32 0, i32 2
  store i64 %46, i64* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %53, i64 %55
  %57 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %56, i32 0, i32 4
  store i32 %52, i32* %57, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %59, i64 %61
  %63 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %62, i32 0, i32 3
  store i64* %58, i64** %63, align 8
  %64 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %64, i64 %66
  %68 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %67, i32 0, i32 5
  store %union.pthread_barrier_t* %9, %union.pthread_barrier_t** %68, align 8
  %69 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %70 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %69, i64 0
  %71 = bitcast %struct.pkmedian_arg_t* %70 to i8*
  %72 = call i8* @_Z14localSearchSubPv(i8* %71)
  br label %73

73:                                               ; preds = %33
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %29

76:                                               ; preds = %29
  %77 = load i64*, i64** %10, align 8
  %78 = icmp eq i64* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = bitcast i64* %77 to i8*
  call void @_ZdaPv(i8* %80) #17
  br label %81

81:                                               ; preds = %79, %76
  %82 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %83 = icmp eq %struct.pkmedian_arg_t* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = bitcast %struct.pkmedian_arg_t* %82 to i8*
  call void @_ZdaPv(i8* %85) #17
  br label %86

86:                                               ; preds = %84, %81
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #9

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #10

; Function Attrs: noinline optnone
define dso_local void @_Z12outcenterIDsP6PointsPlPc(%struct.Points* %0, i64* %1, i8* %2) #7 {
  %4 = alloca %struct.Points*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %7, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  call void @exit(i32 1) #18
  unreachable

20:                                               ; preds = %3
  %21 = load %struct.Points*, %struct.Points** %4, align 8
  %22 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call noalias i8* @calloc(i64 4, i64 %23) #3
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %44, %20
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.Points*, %struct.Points** %4, align 8
  %30 = getelementptr inbounds %struct.Points, %struct.Points* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.Points*, %struct.Points** %4, align 8
  %36 = getelementptr inbounds %struct.Points, %struct.Points* %35, i32 0, i32 2
  %37 = load %struct.Point*, %struct.Point** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.Point, %struct.Point* %37, i64 %39
  %41 = getelementptr inbounds %struct.Point, %struct.Point* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %34, i64 %42
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %26

47:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %110, %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.Points*, %struct.Points** %4, align 8
  %52 = getelementptr inbounds %struct.Points, %struct.Points* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %48
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %55
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %71 = load %struct.Points*, %struct.Points** %4, align 8
  %72 = getelementptr inbounds %struct.Points, %struct.Points* %71, i32 0, i32 2
  %73 = load %struct.Point*, %struct.Point** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.Point, %struct.Point* %73, i64 %75
  %77 = getelementptr inbounds %struct.Point, %struct.Point* %76, i32 0, i32 0
  %78 = load float, float* %77, align 8
  %79 = fpext float %78 to double
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %79)
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %103, %62
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.Points*, %struct.Points** %4, align 8
  %84 = getelementptr inbounds %struct.Points, %struct.Points* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %89 = load %struct.Points*, %struct.Points** %4, align 8
  %90 = getelementptr inbounds %struct.Points, %struct.Points* %89, i32 0, i32 2
  %91 = load %struct.Point*, %struct.Point** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.Point, %struct.Point* %91, i64 %93
  %95 = getelementptr inbounds %struct.Point, %struct.Point* %94, i32 0, i32 1
  %96 = load float*, float** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fpext float %100 to double
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %101)
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %81

106:                                              ; preds = %81
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %55
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %48

113:                                              ; preds = %48
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %115 = call i32 @fclose(%struct._IO_FILE* %114)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #11

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline optnone
define dso_local void @_Z13streamClusterP7PStreamllillPc(%class.PStream* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5, i8* %6) #7 {
  %8 = alloca %class.PStream*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.Points, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.Points, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %class.PStream* %0, %class.PStream** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %26, %28
  %30 = mul i64 %29, 4
  %31 = call noalias i8* @malloc(i64 %30) #3
  %32 = bitcast i8* %31 to float*
  store float* %32, float** %15, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %33, %35
  %37 = mul i64 %36, 4
  %38 = call noalias i8* @malloc(i64 %37) #3
  %39 = bitcast i8* %38 to float*
  store float* %39, float** %16, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %40, %42
  %44 = mul i64 %43, 8
  %45 = call noalias i8* @malloc(i64 %44) #3
  %46 = bitcast i8* %45 to i64*
  store i64* %46, i64** %17, align 8
  %47 = load float*, float** %15, align 8
  %48 = icmp eq float* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %7
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 1) #18
  unreachable

52:                                               ; preds = %7
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = mul i64 %57, 32
  %59 = call noalias i8* @malloc(i64 %58) #3
  %60 = bitcast i8* %59 to %struct.Point*
  %61 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 2
  store %struct.Point* %60, %struct.Point** %61, align 8
  store i32 0, i32* %19, align 4
  br label %62

62:                                               ; preds = %80, %52
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %12, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load float*, float** %15, align 8
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %68, i64 %72
  %74 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 2
  %75 = load %struct.Point*, %struct.Point** %74, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.Point, %struct.Point* %75, i64 %77
  %79 = getelementptr inbounds %struct.Point, %struct.Point* %78, i32 0, i32 1
  store float* %73, float** %79, align 8
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %62

83:                                               ; preds = %62
  %84 = load i32, i32* %11, align 4
  %85 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 1
  store i32 %84, i32* %85, align 8
  %86 = load i64, i64* %13, align 8
  %87 = mul i64 %86, 32
  %88 = call noalias i8* @malloc(i64 %87) #3
  %89 = bitcast i8* %88 to %struct.Point*
  %90 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 2
  store %struct.Point* %89, %struct.Point** %90, align 8
  %91 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  store i64 0, i64* %91, align 8
  store i32 0, i32* %21, align 4
  br label %92

92:                                               ; preds = %116, %83
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %13, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load float*, float** %16, align 8
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %98, i64 %102
  %104 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 2
  %105 = load %struct.Point*, %struct.Point** %104, align 8
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.Point, %struct.Point* %105, i64 %107
  %109 = getelementptr inbounds %struct.Point, %struct.Point* %108, i32 0, i32 1
  store float* %103, float** %109, align 8
  %110 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 2
  %111 = load %struct.Point*, %struct.Point** %110, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.Point, %struct.Point* %111, i64 %113
  %115 = getelementptr inbounds %struct.Point, %struct.Point* %114, i32 0, i32 0
  store float 1.000000e+00, float* %115, align 8
  br label %116

116:                                              ; preds = %97
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %21, align 4
  br label %92

119:                                              ; preds = %92
  store i64 0, i64* %22, align 8
  br label %120

120:                                              ; preds = %119, %220
  %121 = load %class.PStream*, %class.PStream** %8, align 8
  %122 = load float*, float** %15, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i64, i64* %12, align 8
  %125 = trunc i64 %124 to i32
  %126 = bitcast %class.PStream* %121 to i64 (%class.PStream*, float*, i32, i32)***
  %127 = load i64 (%class.PStream*, float*, i32, i32)**, i64 (%class.PStream*, float*, i32, i32)*** %126, align 8
  %128 = getelementptr inbounds i64 (%class.PStream*, float*, i32, i32)*, i64 (%class.PStream*, float*, i32, i32)** %127, i64 0
  %129 = load i64 (%class.PStream*, float*, i32, i32)*, i64 (%class.PStream*, float*, i32, i32)** %128, align 8
  %130 = call i64 %129(%class.PStream* %121, float* %122, i32 %123, i32 %125)
  store i64 %130, i64* %24, align 8
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %132 = load i64, i64* %24, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 %132)
  %134 = load %class.PStream*, %class.PStream** %8, align 8
  %135 = bitcast %class.PStream* %134 to i32 (%class.PStream*)***
  %136 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %135, align 8
  %137 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %136, i64 1
  %138 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %137, align 8
  %139 = call i32 %138(%class.PStream* %134)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %120
  %142 = load i64, i64* %24, align 8
  %143 = load i64, i64* %12, align 8
  %144 = trunc i64 %143 to i32
  %145 = zext i32 %144 to i64
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load %class.PStream*, %class.PStream** %8, align 8
  %149 = bitcast %class.PStream* %148 to i32 (%class.PStream*)***
  %150 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %149, align 8
  %151 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %150, i64 2
  %152 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %151, align 8
  %153 = call i32 %152(%class.PStream* %148)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %147, %120
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 1) #18
  unreachable

158:                                              ; preds = %147, %141
  %159 = load i64, i64* %24, align 8
  %160 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  store i32 0, i32* %25, align 4
  br label %161

161:                                              ; preds = %174, %158
  %162 = load i32, i32* %25, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp slt i64 %163, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 2
  %169 = load %struct.Point*, %struct.Point** %168, align 8
  %170 = load i32, i32* %25, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.Point, %struct.Point* %169, i64 %171
  %173 = getelementptr inbounds %struct.Point, %struct.Point* %172, i32 0, i32 0
  store float 1.000000e+00, float* %173, align 8
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %25, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %25, align 4
  br label %161

177:                                              ; preds = %161
  %178 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = mul i64 %179, 1
  %181 = call noalias i8* @malloc(i64 %180) #3
  store i8* %181, i8** @_ZL17switch_membership, align 8
  %182 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call noalias i8* @calloc(i64 %183, i64 1) #3
  store i8* %184, i8** @_ZL9is_center, align 8
  %185 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = mul i64 %186, 4
  %188 = call noalias i8* @malloc(i64 %187) #3
  %189 = bitcast i8* %188 to i32*
  store i32* %189, i32** @_ZL12center_table, align 8
  %190 = load i64, i64* %9, align 8
  %191 = load i64, i64* %10, align 8
  call void @_Z11localSearchP6PointsllPl(%struct.Points* %18, i64 %190, i64 %191, i64* %23)
  %192 = call i32 @_Z11contcentersP6Points(%struct.Points* %18)
  %193 = load i64, i64* %23, align 8
  %194 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %193, %195
  %197 = load i64, i64* %13, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %177
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #18
  unreachable

202:                                              ; preds = %177
  %203 = load i64*, i64** %17, align 8
  %204 = load i64, i64* %22, align 8
  call void @_Z11copycentersP6PointsS0_Pll(%struct.Points* %18, %struct.Points* %20, i64* %203, i64 %204)
  %205 = load i64, i64* %24, align 8
  %206 = load i64, i64* %22, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %22, align 8
  %208 = load i8*, i8** @_ZL9is_center, align 8
  call void @free(i8* %208) #3
  %209 = load i8*, i8** @_ZL17switch_membership, align 8
  call void @free(i8* %209) #3
  %210 = load i32*, i32** @_ZL12center_table, align 8
  %211 = bitcast i32* %210 to i8*
  call void @free(i8* %211) #3
  %212 = load %class.PStream*, %class.PStream** %8, align 8
  %213 = bitcast %class.PStream* %212 to i32 (%class.PStream*)***
  %214 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %213, align 8
  %215 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %214, i64 2
  %216 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %215, align 8
  %217 = call i32 %216(%class.PStream* %212)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %202
  br label %221

220:                                              ; preds = %202
  br label %120

221:                                              ; preds = %219
  %222 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = mul i64 %223, 1
  %225 = call noalias i8* @malloc(i64 %224) #3
  store i8* %225, i8** @_ZL17switch_membership, align 8
  %226 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call noalias i8* @calloc(i64 %227, i64 1) #3
  store i8* %228, i8** @_ZL9is_center, align 8
  %229 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = mul i64 %230, 4
  %232 = call noalias i8* @malloc(i64 %231) #3
  %233 = bitcast i8* %232 to i32*
  store i32* %233, i32** @_ZL12center_table, align 8
  %234 = load i64, i64* %9, align 8
  %235 = load i64, i64* %10, align 8
  call void @_Z11localSearchP6PointsllPl(%struct.Points* %20, i64 %234, i64 %235, i64* %23)
  %236 = call i32 @_Z11contcentersP6Points(%struct.Points* %20)
  %237 = load i64*, i64** %17, align 8
  %238 = load i8*, i8** %14, align 8
  call void @_Z12outcenterIDsP6PointsPlPc(%struct.Points* %20, i64* %237, i8* %238)
  ret void
}

; Function Attrs: noinline norecurse optnone
define dso_local i32 @main(i32 %0, i8** %1) #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
declare dso_local i32 @atoi(i8*) #13

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local void @srand48(i64) #2

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #9

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN9SimStreamC2El(%class.SimStream* %0, i64 %1) unnamed_addr #4 comdat align 2 {
  %3 = alloca %class.SimStream*, align 8
  %4 = alloca i64, align 8
  store %class.SimStream* %0, %class.SimStream** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %class.SimStream*, %class.SimStream** %3, align 8
  %6 = bitcast %class.SimStream* %5 to %class.PStream*
  call void @_ZN7PStreamC2Ev(%class.PStream* %6) #3
  %7 = bitcast %class.SimStream* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV9SimStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %class.SimStream, %class.SimStream* %5, i32 0, i32 1
  store i64 %8, i64* %9, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #10

; Function Attrs: noinline optnone
define linkonce_odr dso_local void @_ZN10FileStreamC2EPc(%class.FileStream* %0, i8* %1) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.FileStream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %class.FileStream* %0, %class.FileStream** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %class.FileStream*, %class.FileStream** %3, align 8
  %8 = bitcast %class.FileStream* %7 to %class.PStream*
  call void @_ZN7PStreamC2Ev(%class.PStream* %8) #3
  %9 = bitcast %class.FileStream* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10FileStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = invoke %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
          to label %12 unwind label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.FileStream, %class.FileStream* %7, i32 0, i32 1
  store %struct._IO_FILE* %11, %struct._IO_FILE** %13, align 8
  %14 = getelementptr inbounds %class.FileStream, %class.FileStream* %7, i32 0, i32 1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8* %19)
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @exit(i32 1) #18
  unreachable

22:                                               ; preds = %17, %2
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %5, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %6, align 4
  %26 = bitcast %class.FileStream* %7 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* %26) #3
  br label %28

27:                                               ; preds = %12
  ret void

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = insertvalue { i8*, i32 } undef, i8* %29, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN7PStreamC2Ev(%class.PStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.PStream*, align 8
  store %class.PStream* %0, %class.PStream** %2, align 8
  %3 = load %class.PStream*, %class.PStream** %2, align 8
  %4 = bitcast %class.PStream* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7PStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN7PStreamD2Ev(%class.PStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.PStream*, align 8
  store %class.PStream* %0, %class.PStream** %2, align 8
  %3 = load %class.PStream*, %class.PStream** %2, align 8
  ret void
}

; Function Attrs: noinline optnone
define linkonce_odr dso_local i64 @_ZN10FileStream4readEPfii(%class.FileStream* %0, float* %1, i32 %2, i32 %3) unnamed_addr #7 comdat align 2 {
  %5 = alloca %class.FileStream*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %class.FileStream* %0, %class.FileStream** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %class.FileStream*, %class.FileStream** %5, align 8
  %10 = load float*, float** %6, align 8
  %11 = bitcast float* %10 to i8*
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %class.FileStream, %class.FileStream* %9, i32 0, i32 1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %19 = call i64 @fread(i8* %11, i64 %14, i64 %16, %struct._IO_FILE* %18)
  ret i64 %19
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i32 @_ZN10FileStream6ferrorEv(%class.FileStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %2, align 8
  %3 = load %class.FileStream*, %class.FileStream** %2, align 8
  %4 = getelementptr inbounds %class.FileStream, %class.FileStream* %3, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @ferror(%struct._IO_FILE* %5) #3
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i32 @_ZN10FileStream4feofEv(%class.FileStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %2, align 8
  %3 = load %class.FileStream*, %class.FileStream** %2, align 8
  %4 = getelementptr inbounds %class.FileStream, %class.FileStream* %3, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @feof(%struct._IO_FILE* %5) #3
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN10FileStreamD2Ev(%class.FileStream* %0) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.FileStream*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %class.FileStream* %0, %class.FileStream** %2, align 8
  %5 = load %class.FileStream*, %class.FileStream** %2, align 8
  %6 = bitcast %class.FileStream* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10FileStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
          to label %9 unwind label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.FileStream, %class.FileStream* %5, i32 0, i32 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = invoke i32 @fclose(%struct._IO_FILE* %11)
          to label %13 unwind label %15

13:                                               ; preds = %9
  %14 = bitcast %class.FileStream* %5 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* %14) #3
  ret void

15:                                               ; preds = %9, %1
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %3, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %4, align 4
  %19 = bitcast %class.FileStream* %5 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* %19) #3
  br label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %21) #18
  unreachable
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN10FileStreamD0Ev(%class.FileStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %2, align 8
  %3 = load %class.FileStream*, %class.FileStream** %2, align 8
  call void @_ZN10FileStreamD2Ev(%class.FileStream* %3) #3
  %4 = bitcast %class.FileStream* %3 to i8*
  call void @_ZdlPv(i8* %4) #17
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #14 comdat {
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
  %2 = alloca %class.PStream*, align 8
  store %class.PStream* %0, %class.PStream** %2, align 8
  %3 = load %class.PStream*, %class.PStream** %2, align 8
  call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #15

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i64 @_ZN9SimStream4readEPfii(%class.SimStream* %0, float* %1, i32 %2, i32 %3) unnamed_addr #4 comdat align 2 {
  %5 = alloca %class.SimStream*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %class.SimStream* %0, %class.SimStream** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %class.SimStream*, %class.SimStream** %5, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %49, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %class.SimStream, %class.SimStream* %12, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %52

23:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = call i64 @lrand48() #3
  %30 = sitofp i64 %29 to float
  %31 = fdiv float %30, 0x41E0000000000000
  %32 = load float*, float** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %32, i64 %38
  store float %31, float* %39, align 4
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %24

43:                                               ; preds = %24
  %44 = getelementptr inbounds %class.SimStream, %class.SimStream* %12, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %13

52:                                               ; preds = %21
  %53 = load i64, i64* %9, align 8
  ret i64 %53
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i32 @_ZN9SimStream6ferrorEv(%class.SimStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %2, align 8
  %3 = load %class.SimStream*, %class.SimStream** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local i32 @_ZN9SimStream4feofEv(%class.SimStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %2, align 8
  %3 = load %class.SimStream*, %class.SimStream** %2, align 8
  %4 = getelementptr inbounds %class.SimStream, %class.SimStream* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp sle i64 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN9SimStreamD2Ev(%class.SimStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %2, align 8
  %3 = load %class.SimStream*, %class.SimStream** %2, align 8
  %4 = bitcast %class.SimStream* %3 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN9SimStreamD0Ev(%class.SimStream* %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %2, align 8
  %3 = load %class.SimStream*, %class.SimStream** %2, align 8
  call void @_ZN9SimStreamD2Ev(%class.SimStream* %3) #3
  %4 = bitcast %class.SimStream* %3 to i8*
  call void @_ZdlPv(i8* %4) #17
  ret void
}

attributes #0 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { noinline optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline norecurse optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { builtin }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
