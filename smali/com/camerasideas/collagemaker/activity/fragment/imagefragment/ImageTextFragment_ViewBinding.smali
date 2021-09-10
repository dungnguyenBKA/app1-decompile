.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    const v0, 0x7f080291

    const-string v1, "field \'mEditText\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    const-string v3, "field \'mEditText\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    .line 5
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080205

    const-string v2, "field \'mTextSizeView\'"

    .line 8
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeView:Landroid/widget/TextView;

    const v0, 0x7f080083

    const-string v1, "field \'mBottomChildLayout\'"

    .line 11
    const-class v2, Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    const v0, 0x7f080095

    const-string v1, "field \'mBtnApply\' and method \'onClick\'"

    .line 15
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "field \'mBtnApply\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnApply:Landroidx/appcompat/widget/AppCompatImageView;

    .line 17
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->d:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c9

    const-string v1, "field \'mBtnKeyboard\' and method \'onClick\'"

    .line 19
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'mBtnKeyboard\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnKeyboard:Landroid/widget/FrameLayout;

    .line 21
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->e:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c7

    const-string v1, "field \'mBtnTextFont\' and method \'onClick\'"

    .line 23
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 24
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'mBtnTextFont\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnTextFont:Landroid/widget/FrameLayout;

    .line 25
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->f:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$d;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ca

    const-string v1, "field \'mBtnTextStyle\' and method \'onClick\'"

    .line 27
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 28
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'mBtnTextStyle\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnTextStyle:Landroid/widget/FrameLayout;

    .line 29
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->g:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$e;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802b8

    const-string v1, "field \'mTextSizeBar\'"

    .line 31
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;

    .line 32
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeBar:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;

    const v0, 0x7f08009a

    const-string v1, "field \'mBtnCancel\' and method \'onClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 36
    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnCancel:Landroid/view/View;

    .line 37
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->h:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding$f;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnApply:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnKeyboard:Landroid/widget/FrameLayout;

    .line 8
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnTextFont:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnTextStyle:Landroid/widget/FrameLayout;

    .line 10
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeBar:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;

    .line 11
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnCancel:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->c:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->e:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->f:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->g:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment_ViewBinding;->h:Landroid/view/View;

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
