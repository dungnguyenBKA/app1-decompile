.class Ljp/co/cyberagent/android/gpuimage/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/c;->h(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:F


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/c;IF)V
    .locals 0

    .line 1
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/c$a;->b:I

    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/c$a;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/c$a;->b:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/c$a;->c:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
