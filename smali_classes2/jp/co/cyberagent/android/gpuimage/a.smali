.class Ljp/co/cyberagent/android/gpuimage/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ljp/co/cyberagent/android/gpuimage/b;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/a;->b:Ljp/co/cyberagent/android/gpuimage/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/a;->b:Ljp/co/cyberagent/android/gpuimage/b;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/b;->a(Ljp/co/cyberagent/android/gpuimage/b;)Ljp/co/cyberagent/android/gpuimage/c;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/a;->b:Ljp/co/cyberagent/android/gpuimage/b;

    invoke-static {v1}, Ljp/co/cyberagent/android/gpuimage/b;->a(Ljp/co/cyberagent/android/gpuimage/b;)Ljp/co/cyberagent/android/gpuimage/c;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/c;->a()V

    .line 3
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/a;->b:Ljp/co/cyberagent/android/gpuimage/b;

    invoke-static {v1}, Ljp/co/cyberagent/android/gpuimage/b;->a(Ljp/co/cyberagent/android/gpuimage/b;)Ljp/co/cyberagent/android/gpuimage/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
