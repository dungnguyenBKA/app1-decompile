.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;
.super Lsm;
.source "SourceFile"


# instance fields
.field private final i0:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsm;-><init>()V

    .line 2
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;->i0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic z1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm;->f0:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const p2, 0x7f080224

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f080260

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p2, v1}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {v0, v1}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;->i0:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;->i0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080121

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701b7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 11
    new-instance p2, Landroid/text/SpannableString;

    const-string v1, "face"

    invoke-direct {p2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    const/16 v3, 0x21

    .line 12
    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v0, " "

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public v1()Ljava/lang/String;
    .locals 1

    const-string v0, "RateFeedBackFragment"

    return-object v0
.end method

.method protected w1()I
    .locals 1

    const v0, 0x7f0b0056

    return v0
.end method
