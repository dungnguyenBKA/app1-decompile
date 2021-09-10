.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;
.super Lsm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;
    }
.end annotation


# instance fields
.field private i0:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;

.field private j0:Landroid/text/TextWatcher;

.field mBtnSubmit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mErrorDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRatioX:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRatioY:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsm;-><init>()V

    .line 2
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->j0:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic z1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public synthetic A1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3
    iget-object v0, p0, Lsm;->f0:Landroid/content/Context;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    invoke-static {v0, v1}, Llm;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public B1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;

    return-void
.end method

.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/b;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->j0:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioY:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->j0:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lsm;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->j0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioY:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->j0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    invoke-super {p0}, Lsm;->o0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 2
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioY:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;

    if-eqz v1, :cond_5

    .line 5
    invoke-interface {v1, p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;->e(FF)V

    goto :goto_2

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mErrorDesc:Landroid/widget/TextView;

    invoke-static {p1}, Luq;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lsm;->f0:Landroid/content/Context;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mErrorDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f010026

    .line 8
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mErrorDesc:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lsm;->u1()V

    goto :goto_3

    .line 13
    :pswitch_1
    invoke-virtual {p0}, Lsm;->u1()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0800f3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lsm;->p1(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public v1()Ljava/lang/String;
    .locals 1

    const-string v0, "CustomRatioFragment"

    return-object v0
.end method

.method protected w1()I
    .locals 1

    const v0, 0x7f0b004b

    return v0
.end method
