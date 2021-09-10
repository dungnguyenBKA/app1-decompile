.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;
.super Lsm;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsm;-><init>()V

    return-void
.end method

.method static synthetic y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic z1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public synthetic A1(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lsm;->u1()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "("

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lrq;->n(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

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

    .line 4
    iget-object v1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p2, v1}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {v0, v1}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error report description"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 7
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    iget-object v2, p0, Lsm;->f0:Landroid/content/Context;

    const v3, 0x7f050046

    invoke-static {v2, v3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :cond_1
    iget-object v2, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {v2, p1}, Llm;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 13
    iget-object v2, p0, Lsm;->f0:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 16
    new-instance v1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;

    invoke-direct {v1, p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    new-instance v1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/d;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/d;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/c;

    invoke-direct {p2, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;Landroid/widget/EditText;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const-string v0, "EditableFeedBackFragment"

    return-object v0
.end method

.method protected w1()I
    .locals 1

    const v0, 0x7f0b004f

    return v0
.end method
