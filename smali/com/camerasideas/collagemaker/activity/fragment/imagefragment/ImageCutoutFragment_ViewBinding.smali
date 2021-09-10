.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    const v0, 0x7f08008e

    const-string v1, "field \'mBtnAICutout\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mBtnAICutout\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnAICutout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$h;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a1

    const-string v1, "field \'mBtnCutout\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mBtnCutout\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutout:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$i;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$i;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800be

    const-string v1, "field \'mBtnShape\' and method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mBtnShape\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnShape:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$j;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$j;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v1, 0x7f08024f

    const-string v2, "field \'mSeekBarCutoutSize\'"

    .line 16
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v0, 0x7f08024e

    const-string v1, "field \'mSeekBarCutoutOffset\'"

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

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutOffset:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v0, 0x7f08018f

    const-string v1, "field \'mLayoutSeekBar\'"

    .line 23
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLayoutSeekBar:Landroid/view/View;

    const v0, 0x7f0800f9

    const-string v1, "field \'mCutoutControlLayout\'"

    .line 24
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    const v0, 0x7f080118

    const-string v1, "field \'mEraserModeLayout\'"

    .line 25
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mEraserModeLayout:Landroid/view/View;

    const v0, 0x7f08017a

    const-string v1, "field \'mBtnCutoutEraserAdd\' and method \'onClick\'"

    .line 26
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 27
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "field \'mBtnCutoutEraserAdd\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutoutEraserAdd:Landroidx/appcompat/widget/AppCompatImageView;

    .line 28
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->f:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$k;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$k;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08017b

    const-string v1, "field \'mBtnCutoutEraserDelete\' and method \'onClick\'"

    .line 30
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 31
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "field \'mBtnCutoutEraserDelete\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutoutEraserDelete:Landroidx/appcompat/widget/AppCompatImageView;

    .line 32
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->g:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$l;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$l;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800fa

    const-string v1, "field \'mCutoutSeekbarModeLayout\' and method \'onClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mCutoutSeekbarModeLayout\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->h:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$m;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$m;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08017c

    const-string v1, "field \'mIvSeekbarMode\'"

    .line 38
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 39
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 40
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvSeekbarMode:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0802d9

    const-string v1, "field \'mTvSeekbarMode\'"

    .line 42
    const-class v2, Landroid/widget/TextView;

    .line 43
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 44
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarMode:Landroid/widget/TextView;

    const v0, 0x7f08017f

    const-string v1, "field \'mTvSeekbarSize\'"

    .line 46
    const-class v2, Landroid/widget/TextView;

    .line 47
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 48
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarSize:Landroid/widget/TextView;

    const v0, 0x7f080188

    const-string v1, "field \'mIvTab\'"

    .line 50
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 51
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 52
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvTab:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080199

    const-string v1, "field \'mLineEraser\'"

    .line 54
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineEraser:Landroid/view/View;

    const v0, 0x7f08019c

    const-string v1, "field \'mLineMagic\'"

    .line 55
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineMagic:Landroid/view/View;

    const v0, 0x7f08019d

    const-string v1, "field \'mLineSmooth\'"

    .line 56
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineSmooth:Landroid/view/View;

    const v0, 0x7f0802d2

    const-string v1, "field \'mTvEraser\'"

    .line 57
    const-class v2, Landroid/widget/TextView;

    .line 58
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 59
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvEraser:Landroid/widget/TextView;

    const v0, 0x7f0802d3

    const-string v1, "field \'mTvMagic\'"

    .line 61
    const-class v2, Landroid/widget/TextView;

    .line 62
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 63
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvMagic:Landroid/widget/TextView;

    const v0, 0x7f0802d8

    const-string v1, "field \'mTvSmooth\'"

    .line 65
    const-class v2, Landroid/widget/TextView;

    .line 66
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 67
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSmooth:Landroid/widget/TextView;

    const v0, 0x7f0801d8

    const-string v1, "field \'mNewTagMagic\'"

    .line 69
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagMagic:Landroid/view/View;

    const v0, 0x7f0801d9

    const-string v1, "field \'mNewTagSmooth\'"

    .line 70
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagSmooth:Landroid/view/View;

    const v0, 0x7f08027c

    const-string v1, "field \'mSmoothLayout\'"

    .line 71
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSmoothLayout:Landroid/view/View;

    const v0, 0x7f080276

    const-string v1, "field \'smooth0\' and method \'onClick\'"

    .line 72
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 73
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'smooth0\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth0:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->i:Landroid/view/View;

    .line 75
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$n;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$n;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080277

    const-string v1, "field \'smooth1\' and method \'onClick\'"

    .line 76
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 77
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'smooth1\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth1:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->j:Landroid/view/View;

    .line 79
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$o;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$o;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080278

    const-string v1, "field \'smooth2\' and method \'onClick\'"

    .line 80
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 81
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'smooth2\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth2:Landroid/widget/TextView;

    .line 82
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->k:Landroid/view/View;

    .line 83
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$p;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$p;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080279

    const-string v1, "field \'smooth3\' and method \'onClick\'"

    .line 84
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 85
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'smooth3\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth3:Landroid/widget/TextView;

    .line 86
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->l:Landroid/view/View;

    .line 87
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08027a

    const-string v1, "field \'smooth4\' and method \'onClick\'"

    .line 88
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 89
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'smooth4\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth4:Landroid/widget/TextView;

    .line 90
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->m:Landroid/view/View;

    .line 91
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08027b

    const-string v1, "field \'smooth5\' and method \'onClick\'"

    .line 92
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 93
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'smooth5\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth5:Landroid/widget/TextView;

    .line 94
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->n:Landroid/view/View;

    .line 95
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08018c

    const-string v1, "method \'onClick\'"

    .line 96
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->o:Landroid/view/View;

    .line 98
    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$d;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ac

    .line 99
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->p:Landroid/view/View;

    .line 101
    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$e;

    invoke-direct {v2, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$e;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ad

    .line 102
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->q:Landroid/view/View;

    .line 104
    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$f;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ae

    .line 105
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 106
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->r:Landroid/view/View;

    .line 107
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding$g;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnAICutout:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnShape:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutOffset:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 8
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLayoutSeekBar:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    .line 10
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mEraserModeLayout:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutoutEraserAdd:Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutoutEraserDelete:Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;

    .line 14
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvSeekbarMode:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarMode:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarSize:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvTab:Landroidx/appcompat/widget/AppCompatImageView;

    .line 18
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineEraser:Landroid/view/View;

    .line 19
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineMagic:Landroid/view/View;

    .line 20
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineSmooth:Landroid/view/View;

    .line 21
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvEraser:Landroid/widget/TextView;

    .line 22
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvMagic:Landroid/widget/TextView;

    .line 23
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSmooth:Landroid/widget/TextView;

    .line 24
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagMagic:Landroid/view/View;

    .line 25
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagSmooth:Landroid/view/View;

    .line 26
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSmoothLayout:Landroid/view/View;

    .line 27
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth0:Landroid/widget/TextView;

    .line 28
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth1:Landroid/widget/TextView;

    .line 29
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth2:Landroid/widget/TextView;

    .line 30
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth3:Landroid/widget/TextView;

    .line 31
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth4:Landroid/widget/TextView;

    .line 32
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth5:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->c:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->d:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->e:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->f:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->g:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->h:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->i:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->j:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->k:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->l:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->m:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->n:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->o:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->p:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->q:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment_ViewBinding;->r:Landroid/view/View;

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
