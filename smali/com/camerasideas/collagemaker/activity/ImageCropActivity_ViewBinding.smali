.class public Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    .line 3
    const-class v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    const v1, 0x7f080163

    const-string v2, "field \'mCropView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    const v0, 0x7f080206

    const-string v1, "field \'mProgressViewLayout\'"

    .line 7
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mProgressViewLayout:Landroid/view/View;

    const v0, 0x7f080219

    const-string v1, "field \'mRatioRecyclerView\'"

    .line 8
    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 10
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080094

    const-string v1, "method \'onClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;->c:Landroid/view/View;

    .line 14
    new-instance v2, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080099

    .line 15
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;->d:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mProgressViewLayout:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
