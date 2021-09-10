.class Lcom/camerasideas/stackblur/NativeBlurProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/stackblur/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/stackblur/NativeBlurProcess$a;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "blur"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/camerasideas/stackblur/NativeBlurProcess;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/camerasideas/stackblur/NativeBlurProcess;->a:Z

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/graphics/Bitmap;IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/camerasideas/stackblur/NativeBlurProcess;->functionToBlur(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/camerasideas/stackblur/NativeBlurProcess;->a:Z

    return v0
.end method

.method private static native functionToBlur(Landroid/graphics/Bitmap;IIII)V
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 12

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v1, :cond_0

    .line 4
    new-instance v10, Lcom/camerasideas/stackblur/NativeBlurProcess$a;

    float-to-int v11, p2

    const/4 v7, 0x1

    const/4 v5, 0x1

    move-object v2, v10

    move-object v3, p1

    move v4, v11

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/camerasideas/stackblur/NativeBlurProcess$a;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v10, Lcom/camerasideas/stackblur/NativeBlurProcess$a;

    const/4 v7, 0x2

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lcom/camerasideas/stackblur/NativeBlurProcess$a;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    sget-object p2, Lcom/camerasideas/stackblur/c;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1
.end method
