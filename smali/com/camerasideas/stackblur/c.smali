.class public Lcom/camerasideas/stackblur/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/camerasideas/stackblur/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/stackblur/c;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/camerasideas/stackblur/c;->a:Landroid/graphics/Bitmap;

    .line 3
    :try_start_0
    new-instance p2, Lcom/camerasideas/stackblur/b;

    invoke-direct {p2, p1}, Lcom/camerasideas/stackblur/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/camerasideas/stackblur/c;->c:Lcom/camerasideas/stackblur/a;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/renderscript/RSRuntimeException;->printStackTrace()V

    .line 5
    invoke-static {}, Lcom/camerasideas/stackblur/NativeBlurProcess;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/camerasideas/stackblur/NativeBlurProcess;

    invoke-direct {p1}, Lcom/camerasideas/stackblur/NativeBlurProcess;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/stackblur/c;->c:Lcom/camerasideas/stackblur/a;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/camerasideas/stackblur/JavaBlurProcess;

    invoke-direct {p1}, Lcom/camerasideas/stackblur/JavaBlurProcess;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/stackblur/c;->c:Lcom/camerasideas/stackblur/a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(F)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/camerasideas/stackblur/c;->c:Lcom/camerasideas/stackblur/a;

    iget-object v1, p0, Lcom/camerasideas/stackblur/c;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p1}, Lcom/camerasideas/stackblur/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/stackblur/c;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/stackblur/c;->c:Lcom/camerasideas/stackblur/a;

    instance-of v0, v0, Lcom/camerasideas/stackblur/b;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/camerasideas/stackblur/NativeBlurProcess;

    invoke-direct {v0}, Lcom/camerasideas/stackblur/NativeBlurProcess;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/camerasideas/stackblur/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p1}, Lcom/camerasideas/stackblur/NativeBlurProcess;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/stackblur/c;->b:Landroid/graphics/Bitmap;

    .line 6
    iput-object p1, p0, Lcom/camerasideas/stackblur/c;->b:Landroid/graphics/Bitmap;

    .line 7
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/stackblur/c;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method
