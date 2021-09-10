.class public Lcom/camerasideas/collagemaker/appdata/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Landroid/app/Activity;

.field public static c:Landroid/app/Activity;

.field public static d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I

.field public static final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/e;->d:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/camerasideas/collagemaker/appdata/e;->e:I

    .line 3
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lc2;->w(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/camerasideas/collagemaker/appdata/e;->f:Z

    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget v0, Lcom/camerasideas/collagemaker/appdata/e;->e:I

    return v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget v0, Lcom/camerasideas/collagemaker/appdata/e;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget v0, Lcom/camerasideas/collagemaker/appdata/e;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static d()Z
    .locals 2

    .line 1
    sget v0, Lcom/camerasideas/collagemaker/appdata/e;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(I)V
    .locals 0

    .line 1
    sput p0, Lcom/camerasideas/collagemaker/appdata/e;->e:I

    return-void
.end method
