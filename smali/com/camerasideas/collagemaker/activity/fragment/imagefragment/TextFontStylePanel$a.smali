.class Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 6

    const/4 p1, -0x1

    if-eq p3, p1, :cond_9

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Lcom/camerasideas/collagemaker/activity/adapter/o;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Lcom/camerasideas/collagemaker/activity/adapter/o;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsr;->d(I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lmr;->b()Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lmr;->b()Landroid/widget/Toast;

    move-result-object p1

    const/16 p3, 0x11

    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p4}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p4, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result p4

    neg-int p4, p4

    invoke-virtual {p1, p3, p2, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    const p2, 0x7f0e0155

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->r1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltn;

    if-eqz p1, :cond_9

    .line 7
    invoke-virtual {p1}, Ltn;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 8
    invoke-virtual {p1}, Ltn;->d()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->s1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string p1, "PRO_FROM"

    const-string p2, "ProTextStyle"

    .line 10
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    const v3, 0x7f080135

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    return-void

    .line 12
    :cond_3
    invoke-virtual {p1}, Ltn;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p3

    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p4}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p4

    invoke-virtual {p4}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p4

    invoke-virtual {p4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a0(I)V

    .line 13
    invoke-virtual {p1}, Ltn;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p3

    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p4}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p4

    invoke-virtual {p4}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p4

    invoke-virtual {p4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->M(Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p3

    invoke-virtual {p1}, Ltn;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    .line 16
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/fragment/app/g;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_4

    move-object p1, p3

    :cond_4
    if-eqz p1, :cond_5

    .line 17
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->x1()V

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class p4, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    .line 19
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroidx/fragment/app/g;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_6

    move-object p1, p3

    :cond_6
    if-eqz p1, :cond_7

    .line 20
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->v1()V

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class p4, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;

    .line 22
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroidx/fragment/app/g;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move-object p3, p1

    :goto_0
    if-eqz p3, :cond_9

    .line 23
    check-cast p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;

    .line 24
    iget-object p1, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignMiddle:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->onClick(Landroid/view/View;)V

    .line 25
    iget-object p1, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextBold:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 26
    iget-object p1, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextItalic:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 27
    iget-object p1, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextUnderline:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 28
    iget-object p1, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLetterSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 29
    iget-object p1, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLineSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    :cond_9
    :goto_1
    return-void
.end method
