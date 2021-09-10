.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;
.super Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0<",
        "Ljava/lang/Object;",
        "Lno;",
        ">;",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;"
    }
.end annotation


# instance fields
.field private e0:Landroid/view/View;

.field private f0:Landroid/view/View;

.field private g0:Landroidx/appcompat/widget/AppCompatImageView;

.field private h0:Landroidx/appcompat/widget/AppCompatImageView;

.field private i0:Landroid/view/View;

.field private j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

.field private k0:Landroid/view/View;

.field private l0:I

.field private m0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field mBtnAICutout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnCutout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnCutoutEraserAdd:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnCutoutEraserDelete:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnShape:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCutoutControlLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mEraserModeLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIvSeekbarMode:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIvTab:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLayoutSeekBar:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLineEraser:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLineMagic:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLineSmooth:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mNewTagMagic:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mNewTagSmooth:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBarCutoutOffset:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSmoothLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvEraser:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvMagic:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvSeekbarMode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvSeekbarSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvSmooth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private o0:I

.field private p0:I

.field private q0:I

.field private r0:I

.field private s0:I

.field smooth0:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field smooth1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field smooth2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field smooth3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field smooth4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field smooth5:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private t0:I

.field private u0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

.field private v0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->m0:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->n0:Ljava/util/ArrayList;

    const/16 v0, 0x25

    .line 4
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->o0:I

    const/16 v0, 0x12

    .line 5
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->p0:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->q0:I

    const/16 v1, 0x32

    .line 7
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->r0:I

    const/16 v1, 0x19

    .line 8
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->s0:I

    .line 9
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->v0:Z

    return-void
.end method

.method private C1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {v0, p1}, Lc2;->b(Landroid/content/Context;F)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->p0(I)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private D1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x42960000    # 75.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Lc2;->b(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->k0(F)V

    :cond_0
    return-void
.end method

.method private E1(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->l0:I

    .line 2
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const v1, 0x7f050045

    invoke-static {v0, v1}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 3
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    const v2, 0x7f050065

    invoke-static {v1, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->m0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private G1()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->I1(I)Z

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    const v1, 0x7f0800ac

    .line 3
    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->H1(I)V

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvTab:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutOffset:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->q0:I

    invoke-virtual {v1, v3}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 6
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->q0:I

    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->C1(I)V

    .line 7
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j(II)V

    .line 8
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-boolean v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->v0:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->o0:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->p0:I

    :goto_0
    invoke-virtual {v1, v3}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 9
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->o0:I

    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->D1(I)V

    .line 10
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSmoothLayout:Landroid/view/View;

    invoke-static {v1, v0}, Luq;->t(Landroid/view/View;Z)V

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLayoutSeekBar:Landroid/view/View;

    invoke-static {v0, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->i0:Landroid/view/View;

    invoke-static {v0, v2}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method

.method private H1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const v1, 0x7f050113

    invoke-static {v0, v1}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    const v2, 0x7f050051

    invoke-static {v1, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutoutEraserDelete:Landroidx/appcompat/widget/AppCompatImageView;

    const v3, 0x7f070125

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvEraser:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvMagic:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSmooth:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineEraser:Landroid/view/View;

    invoke-static {p1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineMagic:Landroid/view/View;

    invoke-static {p1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineSmooth:Landroid/view/View;

    invoke-static {p1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagSmooth:Landroid/view/View;

    invoke-static {p1}, Luq;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagSmooth:Landroid/view/View;

    invoke-static {p1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 12
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v0, "EnableShowNewMarkSmooth"

    .line 13
    invoke-static {p1, v0, v3}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 14
    :pswitch_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvEraser:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvMagic:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSmooth:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutoutEraserDelete:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f070133

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 18
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineEraser:Landroid/view/View;

    invoke-static {p1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineMagic:Landroid/view/View;

    invoke-static {p1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 20
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineSmooth:Landroid/view/View;

    invoke-static {p1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 21
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagMagic:Landroid/view/View;

    invoke-static {p1}, Luq;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagMagic:Landroid/view/View;

    invoke-static {p1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 23
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v0, "EnableShowNewMarkMagic"

    .line 24
    invoke-static {p1, v0, v3}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 25
    :pswitch_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvEraser:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvMagic:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSmooth:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineEraser:Landroid/view/View;

    invoke-static {p1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 29
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineMagic:Landroid/view/View;

    invoke-static {p1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 30
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLineSmooth:Landroid/view/View;

    invoke-static {p1, v3}, Luq;->t(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0800ac
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private J1(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Click Smooth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->n0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->n0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->u1()V

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/t;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/t;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;I)V

    .line 7
    new-instance p1, Lve0;

    invoke-direct {p1, v0}, Lve0;-><init>(Lvd0;)V

    .line 8
    invoke-static {}, Lnf0;->b()Lxd0;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltd0;->e(Lxd0;)Ltd0;

    move-result-object p1

    .line 9
    invoke-static {}, Lyd0;->a()Lxd0;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltd0;->a(Lxd0;)Ltd0;

    move-result-object p1

    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/s;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/s;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    new-instance v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/y;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/y;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/z;

    invoke-direct {v2, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/z;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    .line 10
    invoke-static {}, Loe0;->a()Lje0;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Ltd0;->b(Lje0;Lje0;Lie0;Lje0;)Lbe0;

    return-void
.end method


# virtual methods
.method public synthetic A1(ILud0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 2
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->J0(I)V

    .line 3
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lud0;->c(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2}, Lud0;->a()V

    return-void
.end method

.method public synthetic B1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->o1()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const p2, 0x7f0800c3

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->g0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const p2, 0x7f0800c2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->h0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const p2, 0x7f080166

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    .line 5
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const p2, 0x7f080190

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->i0:Landroid/view/View;

    .line 6
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const p2, 0x7f08017d

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->k0:Landroid/view/View;

    .line 7
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const p2, 0x7f0800a4

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f0800fb

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->e0:Landroid/view/View;

    .line 9
    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f0800f6

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->f0:Landroid/view/View;

    .line 10
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->g0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->h0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->c0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->k0:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->e0:Landroid/view/View;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    .line 16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->i0:Landroid/view/View;

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->f0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V

    .line 18
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagMagic:Landroid/view/View;

    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    .line 19
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "EnableShowNewMarkMagic"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 20
    invoke-static {p1, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 21
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mNewTagSmooth:Landroid/view/View;

    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    .line 22
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "EnableShowNewMarkSmooth"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 23
    invoke-static {p1, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 24
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->m0:Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnAICutout:Landroid/widget/LinearLayout;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutout:Landroid/widget/LinearLayout;

    aput-object v3, v2, p2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnShape:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->n0:Ljava/util/ArrayList;

    const/4 v2, 0x6

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth0:Landroid/widget/TextView;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth1:Landroid/widget/TextView;

    aput-object v3, v2, p2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth2:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth3:Landroid/widget/TextView;

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth4:Landroid/widget/TextView;

    aput-object v3, v2, v1

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->smooth5:Landroid/widget/TextView;

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLayoutSeekBar:Landroid/view/View;

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    .line 27
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    .line 28
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j(II)V

    .line 29
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutOffset:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j(II)V

    .line 30
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->o0:I

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 31
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutOffset:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->q0:I

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 32
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V

    .line 33
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutOffset:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V

    const p1, 0x7f08008e

    .line 34
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->E1(I)V

    const p1, 0x7f0800ac

    .line 35
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->H1(I)V

    .line 36
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutoutEraserDelete:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 37
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->g0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 38
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->h0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public F1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutoutEraserAdd:Landroidx/appcompat/widget/AppCompatImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mBtnCutoutEraserDelete:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->q0(Z)V

    :cond_0
    return-void
.end method

.method public I1(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->n0(IZ)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public d(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;IZ)V
    .locals 2

    if-eqz p3, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p3

    const v0, 0x7f08024f

    const/4 v1, 0x3

    if-ne p3, v0, :cond_2

    .line 2
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->v0:Z

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    if-ne p1, v1, :cond_0

    .line 4
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->r0:I

    goto :goto_0

    .line 5
    :cond_0
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->o0:I

    .line 6
    :goto_0
    invoke-direct {p0, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->D1(I)V

    goto :goto_2

    .line 7
    :cond_1
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->p0:I

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->b0(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    const p3, 0x7f08024e

    if-ne p1, p3, :cond_4

    .line 11
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    if-ne p1, v1, :cond_3

    .line 12
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->s0:I

    goto :goto_1

    .line 13
    :cond_3
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->q0:I

    .line 14
    :goto_1
    invoke-direct {p0, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->C1(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b004d

    return v0
.end method

.method protected n1()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lno;

    invoke-direct {v0}, Lno;-><init>()V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "sclick:show_dialog"

    const/16 v2, 0x12c

    .line 1
    invoke-static {v1, v2}, Ljm;->b(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->t1()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08018c

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 3
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 4
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x64

    const v4, 0x7f070108

    const v5, 0x7f0800ac

    const-string v6, "ImageCutoutFragment"

    const v7, 0x7f0e013f

    const v8, 0x7f0e0056

    const v9, 0x7f0800a1

    const/4 v10, 0x2

    const/4 v11, 0x3

    const-string v12, "GUID_TYPE"

    const-string v13, "CutClick"

    const/4 v14, 0x4

    const/4 v15, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const/4 v1, 0x5

    .line 5
    invoke-direct {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->J1(I)V

    goto/16 :goto_3

    .line 6
    :sswitch_1
    invoke-direct {v0, v14}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->J1(I)V

    goto/16 :goto_3

    .line 7
    :sswitch_2
    invoke-direct {v0, v11}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->J1(I)V

    goto/16 :goto_3

    .line 8
    :sswitch_3
    invoke-direct {v0, v10}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->J1(I)V

    goto/16 :goto_3

    .line 9
    :sswitch_4
    invoke-direct {v0, v15}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->J1(I)V

    goto/16 :goto_3

    .line 10
    :sswitch_5
    invoke-direct {v0, v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->J1(I)V

    goto/16 :goto_3

    .line 11
    :sswitch_6
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    if-nez v1, :cond_10

    .line 12
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v1}, Luq;->g(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010023

    .line 14
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment$a;

    invoke-direct {v2, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 16
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 17
    :cond_2
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v15}, Luq;->t(Landroid/view/View;Z)V

    .line 18
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010024

    .line 19
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 21
    :sswitch_7
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    const-string v2, "Q&A"

    invoke-static {v1, v13, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    iget v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    if-ne v2, v11, :cond_3

    .line 24
    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-ne v2, v14, :cond_4

    .line 25
    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 26
    :cond_4
    iget v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->l0:I

    if-ne v2, v9, :cond_5

    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->Q()Z

    move-result v2

    if-nez v2, :cond_5

    .line 27
    invoke-virtual {v1, v12, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 28
    :cond_5
    invoke-virtual {v1, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    :goto_0
    iget-object v2, v0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v17, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    const v19, 0x7f080133

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v16, v2

    move-object/from16 v18, v1

    invoke-static/range {v16 .. v21}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    goto/16 :goto_3

    .line 30
    :sswitch_8
    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->F1(Z)V

    goto/16 :goto_3

    .line 31
    :sswitch_9
    invoke-virtual {v0, v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->F1(Z)V

    goto/16 :goto_3

    .line 32
    :sswitch_a
    iget-boolean v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->v0:Z

    xor-int/2addr v1, v15

    iput-boolean v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->v0:Z

    if-eqz v1, :cond_6

    .line 33
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvSeekbarMode:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 34
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarMode:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarSize:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 36
    :cond_6
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvSeekbarMode:Landroidx/appcompat/widget/AppCompatImageView;

    const v4, 0x7f07011d

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 37
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarMode:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarSize:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_1
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 40
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {v1, v15, v2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j(II)V

    .line 41
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-boolean v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->v0:Z

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->o0:I

    goto :goto_2

    :cond_7
    iget v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->p0:I

    :goto_2
    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    goto/16 :goto_3

    .line 42
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->u1()V

    .line 43
    new-instance v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/u;

    invoke-direct {v1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/u;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    .line 44
    new-instance v2, Lve0;

    invoke-direct {v2, v1}, Lve0;-><init>(Lvd0;)V

    .line 45
    invoke-static {}, Lnf0;->b()Lxd0;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltd0;->e(Lxd0;)Ltd0;

    move-result-object v1

    .line 46
    invoke-static {}, Lyd0;->a()Lxd0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltd0;->a(Lxd0;)Ltd0;

    move-result-object v1

    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/n;

    invoke-direct {v2, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/n;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    new-instance v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/q;

    invoke-direct {v3, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/q;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    new-instance v4, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/p;

    invoke-direct {v4, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/p;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    .line 47
    invoke-static {}, Loe0;->a()Lje0;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Ltd0;->b(Lje0;Lje0;Lie0;Lje0;)Lbe0;

    goto/16 :goto_3

    .line 48
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->u1()V

    .line 49
    new-instance v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/r;

    invoke-direct {v1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/r;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    .line 50
    new-instance v2, Lve0;

    invoke-direct {v2, v1}, Lve0;-><init>(Lvd0;)V

    .line 51
    invoke-static {}, Lnf0;->b()Lxd0;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltd0;->e(Lxd0;)Ltd0;

    move-result-object v1

    .line 52
    invoke-static {}, Lyd0;->a()Lxd0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltd0;->a(Lxd0;)Ltd0;

    move-result-object v1

    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/a0;

    invoke-direct {v2, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/a0;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    new-instance v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/w;

    invoke-direct {v3, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/w;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    new-instance v4, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/x;

    invoke-direct {v4, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/x;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    .line 53
    invoke-static {}, Loe0;->a()Lje0;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Ltd0;->b(Lje0;Lje0;Lie0;Lje0;)Lbe0;

    goto/16 :goto_3

    .line 54
    :sswitch_d
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    const-string v2, "Shape"

    invoke-static {v1, v13, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "\u70b9\u51fbCutout Sticker\u7f16\u8f91\u9875\u5e95\u90e8\u83dc\u5355: Shape"

    .line 55
    invoke-static {v6, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    if-ne v1, v15, :cond_8

    return-void

    .line 57
    :cond_8
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 58
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    const-string v2, "mCutoutEditMode"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->u0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    if-eqz v1, :cond_9

    const-string v2, "mEventArgument"

    .line 60
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    :cond_9
    iget-object v2, v0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    const v5, 0x7f080085

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    goto/16 :goto_3

    :sswitch_e
    const-string v1, "Click Mode Smooth"

    .line 62
    invoke-static {v1}, Lim;->b(Ljava/lang/String;)V

    .line 63
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    const-string v2, "Smooth"

    invoke-static {v1, v13, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    .line 65
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enableShowSmoothGuide"

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 66
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 67
    invoke-virtual {v6, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    iget-object v4, v0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v5, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    const v7, 0x7f080133

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    .line 69
    :cond_a
    invoke-direct {v0, v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->J1(I)V

    .line 70
    invoke-virtual {v0, v14}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->I1(I)Z

    .line 71
    iput v14, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    const v1, 0x7f0800ae

    .line 72
    invoke-direct {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->H1(I)V

    .line 73
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSmoothLayout:Landroid/view/View;

    invoke-static {v1, v15}, Luq;->t(Landroid/view/View;Z)V

    .line 74
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLayoutSeekBar:Landroid/view/View;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 75
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->i0:Landroid/view/View;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    goto/16 :goto_3

    :sswitch_f
    const-string v1, "Click Mode Magic"

    .line 76
    invoke-static {v1}, Lim;->b(Ljava/lang/String;)V

    .line 77
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    const-string v5, "Magic"

    invoke-static {v1, v13, v5}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    .line 79
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "enableShowMagicGuide"

    invoke-interface {v1, v5, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 80
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    iget-object v5, v0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v17, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    const v19, 0x7f080133

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v16, v5

    move-object/from16 v18, v1

    invoke-static/range {v16 .. v21}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    .line 83
    :cond_b
    iput-boolean v15, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->v0:Z

    .line 84
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvSeekbarMode:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 85
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarMode:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mTvSeekbarSize:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutOffset:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget v4, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->s0:I

    invoke-virtual {v1, v4}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 88
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->s0:I

    invoke-direct {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->C1(I)V

    .line 89
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const/16 v4, 0x1e

    invoke-virtual {v1, v4, v2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j(II)V

    .line 90
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->r0:I

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 91
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->r0:I

    invoke-direct {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->D1(I)V

    .line 92
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvTab:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 93
    invoke-virtual {v0, v15}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->F1(Z)V

    .line 94
    invoke-virtual {v0, v11}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->I1(I)Z

    .line 95
    iput v11, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    const v1, 0x7f0800ad

    .line 96
    invoke-direct {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->H1(I)V

    .line 97
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSmoothLayout:Landroid/view/View;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 98
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLayoutSeekBar:Landroid/view/View;

    invoke-static {v1, v15}, Luq;->t(Landroid/view/View;Z)V

    .line 99
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->i0:Landroid/view/View;

    invoke-static {v1, v15}, Luq;->t(Landroid/view/View;Z)V

    goto/16 :goto_3

    :sswitch_10
    const-string v1, "Click Mode Eraser"

    .line 100
    invoke-static {v1}, Lim;->b(Ljava/lang/String;)V

    .line 101
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    const-string v2, "Eraser"

    invoke-static {v1, v13, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->G1()V

    goto/16 :goto_3

    .line 103
    :sswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->u1()V

    .line 104
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->i()I

    move-result v1

    .line 105
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->E()Ljava/lang/String;

    move-result-object v2

    .line 106
    new-instance v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/o;

    invoke-direct {v3, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/o;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V

    .line 107
    new-instance v4, Lwe0;

    invoke-direct {v4, v3}, Lwe0;-><init>(Ljava/util/concurrent/Callable;)V

    .line 108
    invoke-static {}, Lnf0;->c()Lxd0;

    move-result-object v3

    invoke-virtual {v4, v3}, Ltd0;->e(Lxd0;)Ltd0;

    move-result-object v3

    .line 109
    invoke-static {}, Lyd0;->a()Lxd0;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltd0;->a(Lxd0;)Ltd0;

    move-result-object v3

    new-instance v4, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/v;

    invoke-direct {v4, v0, v1, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/v;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;ILjava/lang/String;)V

    .line 110
    sget-object v1, Loe0;->d:Lje0;

    sget-object v2, Loe0;->b:Lie0;

    invoke-static {}, Loe0;->a()Lje0;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v2, v5}, Ltd0;->b(Lje0;Lje0;Lie0;Lje0;)Lbe0;

    goto/16 :goto_3

    .line 111
    :sswitch_12
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    const-string v2, "Mannual"

    invoke-static {v1, v13, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "\u70b9\u51fbCutout\u7f16\u8f91\u9875\u5e95\u90e8\u83dc\u5355: Cutout"

    .line 112
    invoke-static {v6, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    .line 114
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enableShowCutoutGuide"

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    invoke-virtual {v1, v12, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    iget-object v2, v0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v17, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    const v19, 0x7f080133

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v16, v2

    move-object/from16 v18, v1

    invoke-static/range {v16 .. v21}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    .line 118
    :cond_c
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->l0:I

    if-ne v1, v9, :cond_d

    return-void

    .line 119
    :cond_d
    invoke-virtual {v0, v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->I1(I)Z

    .line 120
    iput v3, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    .line 121
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->X()V

    .line 122
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->F0()V

    .line 123
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1, v3}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->c0(Z)V

    .line 124
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 125
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->g0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 126
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->h0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 127
    invoke-direct {v0, v9}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->E1(I)V

    .line 128
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    invoke-static {v1, v14}, Luq;->s(Landroid/view/View;I)V

    .line 129
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mEraserModeLayout:Landroid/view/View;

    invoke-static {v1, v14}, Luq;->s(Landroid/view/View;I)V

    .line 130
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    const v2, 0x7f0500b5

    invoke-static {v1, v2}, Luq;->r(Landroid/view/View;I)V

    .line 131
    invoke-direct {v0, v5}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->H1(I)V

    .line 132
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mIvTab:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v15}, Luq;->t(Landroid/view/View;Z)V

    .line 133
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSmoothLayout:Landroid/view/View;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 134
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLayoutSeekBar:Landroid/view/View;

    invoke-static {v1, v15}, Luq;->t(Landroid/view/View;Z)V

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->G1()V

    goto :goto_3

    :sswitch_13
    const-string v1, "Click Change Background Alpha"

    .line 136
    invoke-static {v1}, Lim;->b(Ljava/lang/String;)V

    .line 137
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->N()Z

    move-result v2

    xor-int/2addr v2, v15

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->r(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 138
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->c0:Landroid/widget/ImageView;

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 139
    :cond_e
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->c0:Landroid/widget/ImageView;

    const v2, 0x7f070102

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 140
    :sswitch_14
    iget-object v1, v0, Ltm;->U:Landroid/content/Context;

    const-string v2, "AI"

    invoke-static {v1, v13, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->l0:I

    const v2, 0x7f08008e

    if-ne v1, v2, :cond_f

    return-void

    .line 142
    :cond_f
    invoke-virtual {v0, v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->I1(I)Z

    .line 143
    iput v3, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    .line 144
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->C0()V

    .line 145
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 146
    invoke-direct {v0, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->E1(I)V

    .line 147
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    invoke-static {v1, v3}, Luq;->s(Landroid/view/View;I)V

    .line 148
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mEraserModeLayout:Landroid/view/View;

    invoke-static {v1, v3}, Luq;->s(Landroid/view/View;I)V

    .line 149
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    const v2, 0x7f050138

    invoke-static {v1, v2}, Luq;->r(Landroid/view/View;I)V

    .line 150
    invoke-direct {v0, v5}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->H1(I)V

    .line 151
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSmoothLayout:Landroid/view/View;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 152
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLayoutSeekBar:Landroid/view/View;

    invoke-static {v1, v15}, Luq;->t(Landroid/view/View;Z)V

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->G1()V

    :cond_10
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08008e -> :sswitch_14
        0x7f08009c -> :sswitch_13
        0x7f0800a1 -> :sswitch_12
        0x7f0800a4 -> :sswitch_11
        0x7f0800ac -> :sswitch_10
        0x7f0800ad -> :sswitch_f
        0x7f0800ae -> :sswitch_e
        0x7f0800be -> :sswitch_d
        0x7f0800c2 -> :sswitch_c
        0x7f0800c3 -> :sswitch_b
        0x7f0800fa -> :sswitch_a
        0x7f08017a -> :sswitch_9
        0x7f08017b -> :sswitch_8
        0x7f08017d -> :sswitch_7
        0x7f08018c -> :sswitch_6
        0x7f080276 -> :sswitch_5
        0x7f080277 -> :sswitch_4
        0x7f080278 -> :sswitch_3
        0x7f080279 -> :sswitch_2
        0x7f08027a -> :sswitch_1
        0x7f08027b -> :sswitch_0
    .end sparse-switch
.end method

.method public onEvent(Ljava/lang/Object;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/camerasideas/collagemaker/message/f;

    const v1, 0x7f050138

    const v2, 0x7f0500b5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Lcom/camerasideas/collagemaker/message/f;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/message/a;->a()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v7, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->g0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->h0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->g0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->h0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->g0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->h0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->g0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->h0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->P()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->Q()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    invoke-static {p1, v6}, Luq;->s(Landroid/view/View;I)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mEraserModeLayout:Landroid/view/View;

    invoke-static {p1, v6}, Luq;->s(Landroid/view/View;I)V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    invoke-static {p1, v1}, Luq;->r(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    invoke-static {p1, v5}, Luq;->s(Landroid/view/View;I)V

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mEraserModeLayout:Landroid/view/View;

    invoke-static {p1, v5}, Luq;->s(Landroid/view/View;I)V

    .line 18
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    invoke-static {p1, v2}, Luq;->r(Landroid/view/View;I)V

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->G0()V

    goto/16 :goto_5

    .line 20
    :cond_5
    instance-of v0, p1, Lcom/camerasideas/collagemaker/message/e;

    if-eqz v0, :cond_7

    .line 21
    check-cast p1, Lcom/camerasideas/collagemaker/message/e;

    .line 22
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    iget-boolean v3, p1, Lcom/camerasideas/collagemaker/message/e;->b:Z

    invoke-static {v0, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 23
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mEraserModeLayout:Landroid/view/View;

    iget-boolean v3, p1, Lcom/camerasideas/collagemaker/message/e;->b:Z

    invoke-static {v0, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 24
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutControlLayout:Landroid/view/View;

    iget-boolean v3, p1, Lcom/camerasideas/collagemaker/message/e;->b:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    const v1, 0x7f0500b5

    :goto_1
    invoke-static {v0, v1}, Luq;->r(Landroid/view/View;I)V

    .line 25
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mLayoutSeekBar:Landroid/view/View;

    iget-boolean p1, p1, Lcom/camerasideas/collagemaker/message/e;->b:Z

    invoke-static {v0, p1}, Luq;->t(Landroid/view/View;Z)V

    goto/16 :goto_5

    .line 26
    :cond_7
    instance-of v0, p1, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    if-eqz v0, :cond_d

    .line 27
    check-cast p1, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    .line 28
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->u0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    .line 29
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 30
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1, v0}, Landroidx/core/app/b;->K(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    if-eqz p1, :cond_c

    .line 31
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->u0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->S1(Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;)V

    goto :goto_4

    .line 32
    :cond_8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p1, :cond_9

    .line 33
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    invoke-virtual {p1, v0, v7}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->n0(IZ)Z

    .line 34
    :cond_9
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    const/16 v0, 0x64

    if-ne p1, v3, :cond_a

    .line 35
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const/16 v1, 0x1e

    invoke-virtual {p1, v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j(II)V

    .line 36
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->r0:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    goto :goto_3

    .line 37
    :cond_a
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, v7, v0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j(II)V

    .line 38
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mSeekBarCutoutSize:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->v0:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->o0:I

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->p0:I

    :goto_2
    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 39
    :goto_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->e0:Landroid/view/View;

    invoke-static {p1, v7}, Luq;->t(Landroid/view/View;Z)V

    .line 40
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->f0:Landroid/view/View;

    invoke-static {p1, v6}, Luq;->t(Landroid/view/View;Z)V

    .line 41
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->s1()V

    goto :goto_5

    .line 42
    :cond_d
    instance-of p1, p1, Lcom/camerasideas/collagemaker/message/d;

    if-eqz p1, :cond_10

    .line 43
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-nez p1, :cond_e

    .line 44
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f080166

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    .line 45
    :cond_e
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->l0:I

    const v0, 0x7f08008e

    if-ne p1, v0, :cond_f

    .line 46
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1, v7}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->c0(Z)V

    .line 47
    :cond_f
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->I1(I)Z

    .line 48
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->w0(Lmn;)V

    .line 49
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->t0:I

    if-ne p1, v5, :cond_10

    .line 50
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->L()I

    move-result p1

    div-int/2addr p1, v4

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->J1(I)V

    :cond_10
    :goto_5
    return-void
.end method

.method public p(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    return-void
.end method

.method protected r1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->t1()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public t(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    return-void
.end method

.method public synthetic x1(Lud0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->u()V

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lud0;->c(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lud0;->a()V

    return-void
.end method

.method public synthetic y1(Lud0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->j0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->v()V

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lud0;->c(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lud0;->a()V

    return-void
.end method

.method public synthetic z1(ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->o1()V

    .line 2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->u0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    if-eqz p3, :cond_0

    const-string v0, "mEventArgument"

    .line 4
    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "CutoutStickerItemCount"

    .line 5
    invoke-virtual {v2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p1, "CutoutEditMode"

    .line 6
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const v3, 0x7f080085

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    return-void
.end method
