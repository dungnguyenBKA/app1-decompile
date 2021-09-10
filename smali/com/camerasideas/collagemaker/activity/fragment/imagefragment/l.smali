.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/l;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/l;-><init>()V

    sput-object v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/l;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/l;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .line 1
    sget v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->L0:I

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
