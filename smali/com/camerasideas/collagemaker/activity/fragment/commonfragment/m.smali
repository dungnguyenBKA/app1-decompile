.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;
.super Lsm;
.source "SourceFile"


# instance fields
.field private i0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsm;-><init>()V

    return-void
.end method

.method static synthetic A1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic B1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic C1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic D1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic E1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->i0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic z1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->i0:Landroid/view/View;

    const p2, 0x7f080224

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->i0:Landroid/view/View;

    const v0, 0x7f08013f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p1, v0}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p2, v0}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$b;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->i0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/f;->e(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object v1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->f(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 6
    iget-object p1, p0, Lsm;->f0:Landroid/content/Context;

    const/4 v0, -0x2

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/appdata/f;->m(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 7
    iget-object p1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/appdata/f;->l(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public v1()Ljava/lang/String;
    .locals 1

    const-string v0, "Give5RateFragment"

    return-object v0
.end method

.method protected w1()I
    .locals 1

    const v0, 0x7f0b0052

    return v0
.end method
