.class Ljp/co/cyberagent/android/gpuimage/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ljp/co/cyberagent/android/gpuimage/c;

.field final synthetic c:Ljp/co/cyberagent/android/gpuimage/e;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/e;Ljp/co/cyberagent/android/gpuimage/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/f;->c:Ljp/co/cyberagent/android/gpuimage/e;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/f;->b:Ljp/co/cyberagent/android/gpuimage/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/f;->c:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/e;->h(Ljp/co/cyberagent/android/gpuimage/e;)Ljp/co/cyberagent/android/gpuimage/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/f;->c:Ljp/co/cyberagent/android/gpuimage/e;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/f;->b:Ljp/co/cyberagent/android/gpuimage/c;

    invoke-static {v1, v2}, Ljp/co/cyberagent/android/gpuimage/e;->i(Ljp/co/cyberagent/android/gpuimage/e;Ljp/co/cyberagent/android/gpuimage/c;)Ljp/co/cyberagent/android/gpuimage/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/f;->b:Ljp/co/cyberagent/android/gpuimage/c;

    if-eq v1, v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/c;->a()V

    .line 5
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/f;->c:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/e;->h(Ljp/co/cyberagent/android/gpuimage/e;)Ljp/co/cyberagent/android/gpuimage/c;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/c;->b()V

    .line 6
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/f;->c:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/e;->h(Ljp/co/cyberagent/android/gpuimage/e;)Ljp/co/cyberagent/android/gpuimage/c;

    move-result-object v0

    .line 7
    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    .line 8
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 9
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/f;->c:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/e;->h(Ljp/co/cyberagent/android/gpuimage/e;)Ljp/co/cyberagent/android/gpuimage/c;

    move-result-object v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/f;->c:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v1}, Ljp/co/cyberagent/android/gpuimage/e;->j(Ljp/co/cyberagent/android/gpuimage/e;)I

    move-result v1

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/f;->c:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/e;->k(Ljp/co/cyberagent/android/gpuimage/e;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/c;->f(II)V

    return-void
.end method
