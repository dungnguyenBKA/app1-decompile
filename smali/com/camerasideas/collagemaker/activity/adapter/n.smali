.class public Lcom/camerasideas/collagemaker/activity/adapter/n;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/adapter/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/camerasideas/collagemaker/activity/adapter/n$a;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/camerasideas/collagemaker/activity/adapter/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->f:Z

    .line 3
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->d:Landroid/content/Context;

    const/high16 v0, 0x42a00000    # 80.0f

    .line 4
    invoke-static {p1, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->e:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 7
    new-instance v1, Lcom/camerasideas/collagemaker/activity/adapter/d;

    const v2, 0x7f0e0117

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f07014c

    const-string v5, "other"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/camerasideas/collagemaker/activity/adapter/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/camerasideas/collagemaker/activity/adapter/d;

    const v2, 0x7f0e0115

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const v4, 0x7f070130

    const-string v5, "com.instagram.android"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/camerasideas/collagemaker/activity/adapter/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/camerasideas/collagemaker/activity/adapter/d;

    const v2, 0x7f0e0119

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v4, 0x7f07016b

    const-string v5, "com.whatsapp"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/camerasideas/collagemaker/activity/adapter/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/camerasideas/collagemaker/activity/adapter/d;

    const v2, 0x7f0e0114

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const v4, 0x7f070127

    const-string v5, "com.facebook.katana"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/camerasideas/collagemaker/activity/adapter/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/camerasideas/collagemaker/activity/adapter/d;

    const v2, 0x7f0e0116

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const v4, 0x7f070136

    const-string v5, "com.facebook.orca"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/camerasideas/collagemaker/activity/adapter/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/camerasideas/collagemaker/activity/adapter/d;

    const v2, 0x7f0e0118

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const v4, 0x7f070167

    const-string v5, "com.twitter.android"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/camerasideas/collagemaker/activity/adapter/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/camerasideas/collagemaker/activity/adapter/d;

    const v2, 0x7f0e0113

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x7

    const v3, 0x7f070123

    const-string v4, ""

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/camerasideas/collagemaker/activity/adapter/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public c(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/d;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/adapter/d;->b()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 5

    .line 1
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/n$a;

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/camerasideas/collagemaker/activity/adapter/d;

    .line 3
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/d;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->e(I)V

    .line 4
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/n$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 5
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->b(Lcom/camerasideas/collagemaker/activity/adapter/n$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/d;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->b(Lcom/camerasideas/collagemaker/activity/adapter/n$a;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Roboto-Regular.ttf"

    .line 7
    invoke-static {p2, v1}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    :cond_2
    :goto_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->f:Z

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->d:Landroid/content/Context;

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->e:I

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/adapter/n;->b()I

    move-result v3

    .line 13
    invoke-static {v1}, Lc2;->h(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 14
    div-int v0, v1, v2

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    int-to-float v3, v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v2, v1

    .line 15
    :goto_1
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/n$a;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/n$a;-><init>(Lcom/camerasideas/collagemaker/activity/adapter/n;Landroid/view/View;)V

    return-object p2
.end method

.method public z(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/n;->f:Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method
