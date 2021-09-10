.class Ljp/co/cyberagent/android/gpuimage/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/c;->j(I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:[F


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/c;I[F)V
    .locals 0

    .line 1
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/c$b;->b:I

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/c$b;->c:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/c$b;->b:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/c$b;->c:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
