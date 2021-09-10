.class Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 0

    const/4 p1, -0x1

    if-eq p3, p1, :cond_6

    const/4 p1, 0x1

    if-eq p3, p1, :cond_6

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I

    move-result p1

    if-ne p3, p1, :cond_0

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    const/4 p1, 0x3

    if-ne p3, p1, :cond_6

    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/activity/adapter/h;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->N1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->N1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->w()V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->N1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/activity/adapter/h;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/h;->d(I)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->N1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    move-result-object p1

    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/a;

    invoke-direct {p2, p0, p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;I)V

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A0(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$d;)Z

    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/activity/adapter/h;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/h;->z(I)Lhn;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-virtual {p1}, Lhn;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->P1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const-string p2, "ProBG"

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->v1(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-virtual {p2, p3, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l2(ILhn;)V

    :cond_6
    :goto_0
    return-void
.end method
