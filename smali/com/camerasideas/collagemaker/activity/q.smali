.class public final synthetic Lcom/camerasideas/collagemaker/activity/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje0;


# static fields
.field public static final synthetic a:Lcom/camerasideas/collagemaker/activity/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/camerasideas/collagemaker/activity/q;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/activity/q;-><init>()V

    sput-object v0, Lcom/camerasideas/collagemaker/activity/q;->a:Lcom/camerasideas/collagemaker/activity/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    sget v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->g:I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ImageCutoutActivity"

    const-string v0, "setOrgImageUri: fail"

    .line 3
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->b()V

    :cond_0
    return-void
.end method
