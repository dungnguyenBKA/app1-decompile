.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;
.super Lum;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;


# instance fields
.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

.field mBtnAlignLeft:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnAlignMiddle:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnAlignRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnTextBold:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnTextItalic:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnTextUnderline:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageLetterSpacing:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBarLetterSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBarLineSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lum;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Y:Ljava/util/List;

    return-void
.end method

.method private o1(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v2, "#333333"

    goto :goto_1

    :cond_0
    const-string v2, "#999999"

    :goto_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lvm;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 3
    instance-of p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->u1()Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1, p2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Y:Ljava/util/List;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignLeft:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignMiddle:Landroid/widget/ImageView;

    aput-object v2, p2, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignRight:Landroid/widget/ImageView;

    aput-object v2, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLetterSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLineSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object p1

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p1, p2, :cond_2

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object p1

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p1, p2, :cond_3

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignMiddle:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object p1

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p1, p2, :cond_4

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignRight:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->onClick(Landroid/view/View;)V

    .line 16
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextBold:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->B()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextItalic:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->C()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 18
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextUnderline:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->D()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLetterSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->n()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 20
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLineSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->p()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_5

    .line 22
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mImageLetterSpacing:Landroid/widget/ImageView;

    const p2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 23
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLetterSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->i(Z)V

    :cond_5
    return-void
.end method

.method public d(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p3

    const v0, 0x7f080251

    if-ne p3, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->s(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    const p3, 0x7f080254

    if-ne p1, p3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->t(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b0058

    return v0
.end method

.method protected n1()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lxn;

    invoke-direct {v0}, Lxn;-><init>()V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextUnderline:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextUnderline:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->H(Z)V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextItalic:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextItalic:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->F(Z)V

    goto :goto_0

    .line 6
    :sswitch_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextBold:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextBold:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->C(Z)V

    goto :goto_0

    .line 8
    :sswitch_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->A(Landroid/text/Layout$Alignment;)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignRight:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->o1(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :sswitch_4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->A(Landroid/text/Layout$Alignment;)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignMiddle:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->o1(Landroid/view/View;)V

    goto :goto_0

    .line 12
    :sswitch_5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->Z:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->A(Landroid/text/Layout$Alignment;)V

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignLeft:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->o1(Landroid/view/View;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080090 -> :sswitch_5
        0x7f080091 -> :sswitch_4
        0x7f080092 -> :sswitch_3
        0x7f0800c5 -> :sswitch_2
        0x7f0800c8 -> :sswitch_1
        0x7f0800cb -> :sswitch_0
    .end sparse-switch
.end method

.method public p(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    return-void
.end method

.method public t(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    return-void
.end method
