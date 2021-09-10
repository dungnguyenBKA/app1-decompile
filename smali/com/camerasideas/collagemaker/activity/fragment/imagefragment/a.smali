.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$d;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/a;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/a;->b:I

    .line 1
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->Q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I

    .line 2
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->o2(IZ)V

    .line 3
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v2, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I

    .line 4
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/activity/adapter/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 5
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->R1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v1, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->S1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 7
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v1, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->T1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 8
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v1, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->U1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I

    .line 9
    iget-object p1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->V1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Ljava/lang/String;)V

    .line 10
    iget-object p1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I

    .line 11
    iget-object p1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I

    return-void
.end method
