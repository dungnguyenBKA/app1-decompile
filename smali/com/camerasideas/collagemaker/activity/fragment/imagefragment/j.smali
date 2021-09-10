.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvd0;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Lcom/camerasideas/collagemaker/filter/ISCropFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/j;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/j;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/j;->c:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    return-void
.end method


# virtual methods
.method public final a(Lud0;)V
    .locals 3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/j;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/j;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/j;->c:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    invoke-virtual {v0, v1, v2, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->f2(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;Lud0;)V

    return-void
.end method
