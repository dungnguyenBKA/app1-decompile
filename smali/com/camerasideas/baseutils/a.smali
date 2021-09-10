.class public Lcom/camerasideas/baseutils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/baseutils/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/camerasideas/baseutils/a;


# instance fields
.field private a:Lcom/camerasideas/baseutils/a$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/camerasideas/baseutils/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/camerasideas/baseutils/a;->b:Lcom/camerasideas/baseutils/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/camerasideas/baseutils/a;

    invoke-direct {v0}, Lcom/camerasideas/baseutils/a;-><init>()V

    sput-object v0, Lcom/camerasideas/baseutils/a;->b:Lcom/camerasideas/baseutils/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/camerasideas/baseutils/a;->b:Lcom/camerasideas/baseutils/a;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/baseutils/a;->a:Lcom/camerasideas/baseutils/a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    check-cast v0, Lcom/camerasideas/collagemaker/activity/d;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/camerasideas/baseutils/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/baseutils/a;->a:Lcom/camerasideas/baseutils/a$a;

    return-void
.end method
