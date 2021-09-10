.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/o;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/o;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    const/4 v1, 0x2

    .line 1
    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->I1(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
