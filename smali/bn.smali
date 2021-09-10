.class public Lbn;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbn$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lan;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lbn;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060343

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lbn;->b:I

    .line 4
    iput-object p2, p0, Lbn;->d:Lcn;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 1
    iget-object v1, p0, Lbn;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lbn;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lan;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lan;->b()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lan;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbn;->c:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbn;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lbn;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan;

    .line 4
    invoke-virtual {v0, v1}, Lan;->h(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lbn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lan;

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Lan;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Lan;->h(Z)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v2, v1}, Lan;->h(Z)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lbn;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lbn;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lbn;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b007c

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lbn$b;

    invoke-direct {p3, p0, v0}, Lbn$b;-><init>(Lbn;Lbn$a;)V

    const v0, 0x7f0801f2

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lbn$b;->a:Landroid/widget/ImageView;

    const v0, 0x7f080142

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p3, Lbn$b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0801f3

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lbn$b;->c:Landroid/widget/TextView;

    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    const v0, 0x7f0801f5

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lbn$b;->d:Landroid/widget/TextView;

    const v0, 0x7f08025b

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lbn$b;->e:Landroid/view/View;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbn$b;

    :goto_0
    if-ltz p1, :cond_5

    .line 11
    iget-object v0, p0, Lbn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto/16 :goto_2

    .line 12
    :cond_1
    iget-object v0, p0, Lbn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lan;

    .line 13
    invoke-virtual {p1}, Lan;->b()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lan;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/Google Photos"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 16
    iget-object p1, p3, Lbn$b;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcm;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p3, Lbn$b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f07012a

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 18
    iget-object p1, p3, Lbn$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p1, p3, Lbn$b;->e:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p3, Lbn$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p3, Lbn$b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 22
    :cond_2
    iget-object v2, p3, Lbn$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object v2, p3, Lbn$b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v2, "/Recent"

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    iget-object v0, p3, Lbn$b;->c:Landroid/widget/TextView;

    const v2, 0x7f0e0107

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v2, p3, Lbn$b;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcm;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :goto_1
    iget-object v0, p3, Lbn$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v0, p3, Lbn$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p3, Lbn$b;->e:Landroid/view/View;

    invoke-virtual {p1}, Lan;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lbn;->d:Lcn;

    invoke-virtual {p1}, Lan;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p3, Lbn$b;->a:Landroid/widget/ImageView;

    iget v1, p0, Lbn;->b:I

    invoke-virtual {v0, p1, p3, v1, v1}, Lcn;->c(Ljava/lang/String;Landroid/widget/ImageView;II)V

    :cond_5
    :goto_2
    return-object p2
.end method
