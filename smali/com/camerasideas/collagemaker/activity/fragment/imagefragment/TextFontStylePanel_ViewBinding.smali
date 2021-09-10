.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0801f9

    const-string v2, "field \'mPresetRecyclerView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mPresetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0800c6

    const-string v1, "field \'mBtnTextColor\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    const-string v3, "field \'mBtnTextColor\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnTextColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 9
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b5

    const-string v1, "field \'mBtnOutlineColor\' and method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    const-string v3, "field \'mBtnOutlineColor\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnOutlineColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 13
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080098

    const-string v1, "field \'mBtnBackgroundColor\' and method \'onClick\'"

    .line 15
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    const-string v3, "field \'mBtnBackgroundColor\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnBackgroundColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 17
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->e:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800bd

    const-string v1, "field \'mBtnShadowColor\' and method \'onClick\'"

    .line 19
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    const-string v3, "field \'mBtnShadowColor\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnShadowColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 21
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->f:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$d;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08008f

    const-string v1, "field \'mBtnAlign\' and method \'onClick\'"

    .line 23
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 24
    const-class v1, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    const-string v2, "field \'mBtnAlign\'"

    invoke-static {p2, v0, v2, v1}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnAlign:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 25
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->g:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding$e;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mPresetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnTextColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnOutlineColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnBackgroundColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnShadowColor:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 8
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->mBtnAlign:Lcom/camerasideas/collagemaker/activity/widget/FontTextView;

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->c:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->d:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->e:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->f:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel_ViewBinding;->g:Landroid/view/View;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
