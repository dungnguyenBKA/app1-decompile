.class Lcom/camerasideas/stackblur/NativeBlurProcess$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/stackblur/NativeBlurProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Bitmap;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/stackblur/NativeBlurProcess$a;->b:Landroid/graphics/Bitmap;

    .line 3
    iput p2, p0, Lcom/camerasideas/stackblur/NativeBlurProcess$a;->c:I

    .line 4
    iput p4, p0, Lcom/camerasideas/stackblur/NativeBlurProcess$a;->d:I

    .line 5
    iput p5, p0, Lcom/camerasideas/stackblur/NativeBlurProcess$a;->e:I

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/stackblur/NativeBlurProcess$a;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/camerasideas/stackblur/NativeBlurProcess$a;->c:I

    iget v2, p0, Lcom/camerasideas/stackblur/NativeBlurProcess$a;->d:I

    iget v3, p0, Lcom/camerasideas/stackblur/NativeBlurProcess$a;->e:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/camerasideas/stackblur/NativeBlurProcess;->b(Landroid/graphics/Bitmap;IIII)V

    const/4 v0, 0x0

    return-object v0
.end method
