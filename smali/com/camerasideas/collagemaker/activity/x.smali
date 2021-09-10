.class public final synthetic Lcom/camerasideas/collagemaker/activity/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/x;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/x;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/x;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/x;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/x;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/x;->d:Landroid/graphics/Bitmap;

    .line 1
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->c()V

    .line 2
    iget-object v3, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnChangeAlpha:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Luq;->t(Landroid/view/View;Z)V

    .line 3
    invoke-static {v1}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->h0(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 7
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enableShowEraserGuide"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v3, "GUID_TYPE"

    .line 9
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    const v3, 0x7f080133

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v1, :cond_1

    invoke-static {v2}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->h0(Landroid/graphics/Bitmap;)V

    .line 13
    iget-object v0, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
