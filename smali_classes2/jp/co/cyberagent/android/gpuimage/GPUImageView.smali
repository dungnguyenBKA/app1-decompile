.class public Ljp/co/cyberagent/android/gpuimage/GPUImageView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field private b:Ljp/co/cyberagent/android/gpuimage/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/b;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Ljp/co/cyberagent/android/gpuimage/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->b:Ljp/co/cyberagent/android/gpuimage/b;

    .line 3
    invoke-virtual {p1, p0}, Ljp/co/cyberagent/android/gpuimage/b;->d(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->b:Ljp/co/cyberagent/android/gpuimage/b;

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/b;->a:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/e;->r(I)V

    return-void
.end method
