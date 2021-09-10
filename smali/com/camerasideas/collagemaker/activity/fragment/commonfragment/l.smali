.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;
.super Lsm;
.source "SourceFile"


# instance fields
.field protected i0:Landroid/widget/EditText;

.field private j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsm;-><init>()V

    return-void
.end method

.method static synthetic y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic z1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public A1(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 2

    const-string v0, "TesterLog-Other"

    const-string v1, "\u70b9\u51fbNot Now\u53d6\u6d88\u53d1\u9001Report\u6309\u94ae"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 3
    invoke-virtual {p0}, Lsm;->u1()V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->a()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->a()Landroid/view/View$OnClickListener;

    move-result-object p1

    .line 6
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public B1(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 7

    const-string v0, "TesterLog-Other"

    const-string v1, "\u70b9\u51fb\u63d0\u4ea4\u53d1\u9001\u9519\u8befReport\u5bf9\u8bdd\u6846"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 3
    invoke-virtual {p0}, Lsm;->u1()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "error report description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    const-string v2, ")"

    const-string v3, "("

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->e()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->e()Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 7
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->i0:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    const-string v6, "report"

    invoke-virtual {v5, v6, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    const-string v5, "subject"

    invoke-virtual {v0, v5, v4}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->i0:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lrq;->n(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const p2, 0x7f0801e0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f080299

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08029a

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->i0:Landroid/widget/EditText;

    .line 4
    iget-object p1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p2, p1}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {v0, p1}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "AbsViewClickWrapper"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->i0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    iget-object v1, p0, Lsm;->f0:Landroid/content/Context;

    const v2, 0x7f050046

    invoke-static {v1, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :cond_1
    iget-object v1, p0, Lsm;->f0:Landroid/content/Context;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->i0:Landroid/widget/EditText;

    invoke-static {v1, v2}, Llm;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 13
    iget-object v1, p0, Lsm;->f0:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->i0:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->i0:Landroid/widget/EditText;

    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l$a;

    invoke-direct {v2, p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;Landroid/widget/TextView;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/f;

    invoke-direct {p1, p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/f;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/e;

    invoke-direct {p1, p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/e;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->b()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->b()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->c()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->j0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->c()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
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

    const-string v0, "ErrFeedbackFragment"

    return-object v0
.end method

.method protected w1()I
    .locals 1

    const v0, 0x7f0b004f

    return v0
.end method
