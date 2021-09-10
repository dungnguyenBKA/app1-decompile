.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0802b1

    const-string v2, "field \'mRecyclerView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080252

    const-string v1, "field \'mSeekBarShadowAlpha\'"

    .line 7
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowAlpha:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v0, 0x7f080255

    const-string v1, "field \'mSeekBarShadowDegree\'"

    .line 11
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowDegree:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v0, 0x7f080256

    const-string v1, "field \'mSeekBarShadowX\'"

    .line 15
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 16
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowX:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v0, 0x7f080257

    const-string v1, "field \'mSeekBarShadowY\'"

    .line 19
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 20
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowY:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v0, 0x7f080161

    const-string v1, "field \'mIconTransparent\'"

    .line 23
    const-class v2, Landroid/widget/ImageView;

    .line 24
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconTransparent:Landroid/widget/ImageView;

    const v0, 0x7f08015e

    const-string v1, "field \'mIconShadowDegree\'"

    .line 27
    const-class v2, Landroid/widget/ImageView;

    .line 28
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconShadowDegree:Landroid/widget/ImageView;

    const v0, 0x7f08015f

    const-string v1, "field \'mIconShadowX\'"

    .line 31
    const-class v2, Landroid/widget/ImageView;

    .line 32
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconShadowX:Landroid/widget/ImageView;

    const v0, 0x7f080160

    const-string v1, "field \'mIconShadowY\'"

    .line 35
    const-class v2, Landroid/widget/ImageView;

    .line 36
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    invoke-static {p2, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconShadowY:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowAlpha:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowDegree:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowX:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowY:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 8
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconTransparent:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconShadowDegree:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconShadowX:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconShadowY:Landroid/widget/ImageView;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
