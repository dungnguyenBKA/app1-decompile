.class public Ljp/co/cyberagent/android/gpuimage/h;
.super Ljp/co/cyberagent/android/gpuimage/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/d;-><init>(Ljava/util/List;)V

    .line 2
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/c;

    invoke-direct {v0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/d;->k(Ljp/co/cyberagent/android/gpuimage/c;)V

    .line 3
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/c;

    invoke-direct {p1, p3, p4}, Ljp/co/cyberagent/android/gpuimage/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/d;->k(Ljp/co/cyberagent/android/gpuimage/c;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/d;->e()V

    .line 2
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/h;->n()V

    return-void
.end method

.method public f(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/d;->f(II)V

    .line 2
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/h;->n()V

    return-void
.end method

.method protected n()V
    .locals 7

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/c;

    .line 2
    iget v1, v0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    const-string v2, "texelWidthOffset"

    .line 3
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 4
    iget v3, v0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    const-string v4, "texelHeightOffset"

    .line 5
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 6
    iget v5, p0, Ljp/co/cyberagent/android/gpuimage/c;->i:I

    iget v6, p0, Ljp/co/cyberagent/android/gpuimage/c;->j:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    invoke-virtual {v0, v1, v5}, Ljp/co/cyberagent/android/gpuimage/c;->h(IF)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v3, v1}, Ljp/co/cyberagent/android/gpuimage/c;->h(IF)V

    .line 8
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/c;

    .line 9
    iget v3, v0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    .line 10
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 11
    iget v3, v0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    .line 12
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 13
    invoke-virtual {v0, v2, v1}, Ljp/co/cyberagent/android/gpuimage/c;->h(IF)V

    .line 14
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/c;->i:I

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/c;->j:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v6, v1

    invoke-virtual {v0, v3, v6}, Ljp/co/cyberagent/android/gpuimage/c;->h(IF)V

    return-void
.end method
