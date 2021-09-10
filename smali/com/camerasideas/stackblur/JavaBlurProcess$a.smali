.class Lcom/camerasideas/stackblur/JavaBlurProcess$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/stackblur/JavaBlurProcess;
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
.field private final b:[I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>([IIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->b:[I

    .line 3
    iput p2, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->c:I

    .line 4
    iput p3, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->d:I

    .line 5
    iput p4, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->e:I

    .line 6
    iput p6, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->f:I

    .line 7
    iput p7, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->g:I

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->b:[I

    iget v1, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->c:I

    iget v2, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->d:I

    iget v3, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->e:I

    iget v5, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->f:I

    iget v6, p0, Lcom/camerasideas/stackblur/JavaBlurProcess$a;->g:I

    const/4 v4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/camerasideas/stackblur/JavaBlurProcess;->b([IIIIIII)V

    const/4 v0, 0x0

    return-object v0
.end method
