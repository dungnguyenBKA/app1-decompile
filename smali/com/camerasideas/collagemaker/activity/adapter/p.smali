.class public Lcom/camerasideas/collagemaker/activity/adapter/p;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/adapter/p$a;,
        Lcom/camerasideas/collagemaker/activity/adapter/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private final d:Landroid/view/LayoutInflater;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/camerasideas/collagemaker/activity/adapter/p$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->f:I

    .line 3
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->g:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->d:Landroid/view/LayoutInflater;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x5

    new-array v0, p2, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, p2, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    new-array p3, p2, [I

    .line 9
    fill-array-data p3, :array_2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-array p3, p2, [I

    .line 10
    fill-array-data p3, :array_3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 11
    fill-array-data p3, :array_4

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 12
    fill-array-data p3, :array_5

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 13
    fill-array-data p3, :array_6

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 14
    fill-array-data p3, :array_7

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 15
    fill-array-data p3, :array_8

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 16
    fill-array-data p3, :array_9

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 17
    fill-array-data p3, :array_a

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 18
    fill-array-data p3, :array_b

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 19
    fill-array-data p3, :array_c

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 20
    fill-array-data p3, :array_d

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 21
    fill-array-data p3, :array_e

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 22
    fill-array-data p3, :array_f

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 23
    fill-array-data p3, :array_10

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 24
    fill-array-data p3, :array_11

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 25
    fill-array-data p3, :array_12

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 26
    fill-array-data p3, :array_13

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 27
    fill-array-data p3, :array_14

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 28
    fill-array-data p3, :array_15

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 29
    fill-array-data p3, :array_16

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 30
    fill-array-data p3, :array_17

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 31
    fill-array-data p3, :array_18

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 32
    fill-array-data p3, :array_19

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p3, p2, [I

    .line 33
    fill-array-data p3, :array_1a

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p2, p2, [I

    .line 34
    fill-array-data p2, :array_1b

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->e:Ljava/util/ArrayList;

    .line 36
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/p;->A(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->f:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f070209
        0x7f07020a
        0x7f0e0071
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f0701f5
        0x7f0701f6
        0x7f0e0051
        0x0
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x7f070203
        0x7f070204
        0x7f0e014e
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x7f0701d3
        0x7f0701d4
        0x7f0e00ff
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x7f0701e1
        0x7f0701e2
        0x7f0e0100
        0x4
        0x5
    .end array-data

    :array_5
    .array-data 4
        0x7f070205
        0x7f070206
        0x7f0e0101
        0x9
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x7f070211
        0x7f070212
        0x7f0e0106
        0x10
        0x9
    .end array-data

    :array_7
    .array-data 4
        0x7f0701e7
        0x7f0701e8
        0x7f0e00f3
        0x5
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x7f0701db
        0x7f0701dc
        0x7f0e00ee
        0x3
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x7f0701df
        0x7f0701e0
        0x7f0e00f0
        0x4
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x7f0701ef
        0x7f0701f0
        0x7f0e00f7
        0x9
        0x10
    .end array-data

    :array_b
    .array-data 4
        0x7f0701d1
        0x7f0701d2
        0x7f0e00e9
        0x10
        0x9
    .end array-data

    :array_c
    .array-data 4
        0x7f0701f7
        0x7f0701f8
        0x7f0e0105
        -0x1
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x7f070201
        0x7f070202
        0x7f0e0104
        0x1
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x7f0701fd
        0x7f0701fe
        0x7f0e00fc
        0x780
        0x438
    .end array-data

    :array_f
    .array-data 4
        0x7f0701f9
        0x7f0701fa
        0x7f0e00fa
        0x4b0
        0x274
    .end array-data

    :array_10
    .array-data 4
        0x7f0701d5
        0x7f0701d6
        0x7f0e00ea
        0x1
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x7f07020f
        0x7f070210
        0x7f0e0103
        0x2
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x7f07020d
        0x7f07020e
        0x7f0e00fe
        0x3
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x7f0701eb
        0x7f0701ec
        0x7f0e00f5
        0x7
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x7f0701d9
        0x7f0701da
        0x7f0e00f4
        0x6
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x7f0701d7
        0x7f0701d8
        0x7f0e00f1
        0x4
        0x6
    .end array-data

    :array_16
    .array-data 4
        0x7f0701e5
        0x7f0701e6
        0x7f0e00f2
        0x5
        0x3
    .end array-data

    :array_17
    .array-data 4
        0x7f0701dd
        0x7f0701de
        0x7f0e00ef
        0x3
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x7f0701ed
        0x7f0701ee
        0x7f0e00f6
        0x4
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x7f0701e7
        0x7f0701e8
        0x7f0e00e8
        0x5
        0x4
    .end array-data

    :array_1a
    .array-data 4
        0x7f0701f1
        0x7f0701f2
        0x7f0e00f8
        0x3e8
        0x586
    .end array-data

    :array_1b
    .array-data 4
        0x7f070207
        0x7f070208
        0x7f0e0102
        0x55
        0x6e
    .end array-data
.end method

.method private A(Ljava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 2
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->c:Landroid/content/Context;

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public B(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/p$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->h:Lcom/camerasideas/collagemaker/activity/adapter/p$b;

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->c:Landroid/content/Context;

    const v2, 0x7f0e0051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->c:Landroid/content/Context;

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->f:I

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->c:Landroid/content/Context;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->c:Landroid/content/Context;

    aget v1, v0, v4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->g:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->h:Lcom/camerasideas/collagemaker/activity/adapter/p$b;

    const/4 v2, 0x3

    .line 10
    aget v2, v0, v2

    const/4 v3, 0x4

    aget v0, v0, v3

    invoke-interface {v1, p1, v2, v0}, Lcom/camerasideas/collagemaker/activity/adapter/p$b;->f(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method public C(Lcom/camerasideas/collagemaker/activity/adapter/p$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->h:Lcom/camerasideas/collagemaker/activity/adapter/p$b;

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->g:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/p;->A(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->f:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/adapter/p$a;

    .line 3
    iget-object v2, v1, Lcom/camerasideas/collagemaker/activity/adapter/p$a;->a:Landroid/widget/ImageView;

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->f:I

    if-ne v3, p2, :cond_0

    const/4 v3, 0x1

    aget v3, v0, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget v3, v0, v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v2, v1, Lcom/camerasideas/collagemaker/activity/adapter/p$a;->b:Landroid/widget/TextView;

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, v1, Lcom/camerasideas/collagemaker/activity/adapter/p$a;->b:Landroid/widget/TextView;

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->f:I

    if-ne v2, p2, :cond_1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->c:Landroid/content/Context;

    const v2, 0x7f050045

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->c:Landroid/content/Context;

    const v2, 0x7f050113

    :goto_1
    invoke-static {p2, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->d:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0074

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/c;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/adapter/c;-><init>(Lcom/camerasideas/collagemaker/activity/adapter/p;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/p$a;

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/p$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/p;->f:I

    return v0
.end method
