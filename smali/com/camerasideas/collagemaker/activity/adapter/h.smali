.class public Lcom/camerasideas/collagemaker/activity/adapter/h;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/adapter/h$b;,
        Lcom/camerasideas/collagemaker/activity/adapter/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:I


# instance fields
.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhn;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/ShapeDrawable;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#EBEBEB"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->d:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    .line 4
    sget v1, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->g:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->h:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->i:Ljava/util/List;

    .line 7
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->l:Z

    .line 8
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    const/high16 p2, 0x41200000    # 10.0f

    .line 9
    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->j:I

    .line 10
    new-instance p1, Lhn;

    const p2, 0x7f07013e

    invoke-direct {p1, p2, v0}, Lhn;-><init>(II)V

    .line 11
    new-instance p2, Lhn;

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Lhn;-><init>(II)V

    .line 12
    new-instance v2, Lhn;

    const v3, 0x7f070140

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lhn;-><init>(II)V

    .line 13
    new-instance v3, Lhn;

    const v5, 0x7f070129

    invoke-direct {v3, v5, v4}, Lhn;-><init>(II)V

    .line 14
    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 18
    :goto_0
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->g:[Ljava/lang/String;

    array-length v2, p2

    const/4 v3, 0x3

    if-ge p1, v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    new-instance v5, Lhn;

    aget-object p2, p2, p1

    invoke-direct {v5, p2, v3, v0}, Lhn;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->h:Ljava/util/List;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 21
    :goto_1
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->h:[Ljava/lang/String;

    array-length v2, p2

    if-ge p1, v2, :cond_1

    .line 22
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    new-instance v5, Lhn;

    aget-object p2, p2, p1

    invoke-direct {v5, p2, v3, v0}, Lhn;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->h:Ljava/util/List;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->i:Ljava/util/List;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 25
    :goto_2
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->i:[Ljava/lang/String;

    array-length v2, p2

    if-ge p1, v2, :cond_2

    .line 26
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    new-instance v5, Lhn;

    aget-object p2, p2, p1

    invoke-direct {v5, p2, v3, v4}, Lhn;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->h:Ljava/util/List;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 28
    :goto_3
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->j:[Ljava/lang/String;

    array-length v2, p2

    if-ge p1, v2, :cond_3

    .line 29
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    new-instance v5, Lhn;

    aget-object p2, p2, p1

    invoke-direct {v5, p2, v3, v0}, Lhn;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 30
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->k:I

    .line 31
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->i:Ljava/util/List;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->h:Ljava/util/List;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {}, Lrn;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x5

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lon;

    .line 34
    instance-of v5, p2, Lqn;

    if-eqz v5, :cond_4

    .line 35
    check-cast p2, Lqn;

    .line 36
    new-instance v5, Lhn;

    invoke-direct {v5}, Lhn;-><init>()V

    .line 37
    invoke-virtual {v5, v2}, Lhn;->k(I)V

    .line 38
    invoke-virtual {p2}, Lpn;->a()I

    move-result p2

    invoke-virtual {v5, p2}, Lhn;->j(I)V

    .line 39
    invoke-virtual {v5, v4}, Lhn;->l(Z)V

    .line 40
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 41
    :cond_5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060237

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 p2, 0x8

    new-array p2, p2, [F

    int-to-float p1, p1

    aput p1, p2, v0

    aput p1, p2, v4

    aput p1, p2, v1

    aput p1, p2, v3

    const/4 v0, 0x4

    aput p1, p2, v0

    aput p1, p2, v2

    const/4 v0, 0x6

    aput p1, p2, v0

    const/4 v0, 0x7

    aput p1, p2, v0

    .line 42
    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 43
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->f:Landroid/graphics/drawable/ShapeDrawable;

    .line 44
    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->g:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->f:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->f:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhn;

    .line 3
    invoke-virtual {v1}, Lhn;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lhn;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v1}, Lhn;->e()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lhn;->e()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public B(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->g:I

    .line 2
    sget v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->d:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method

.method public C(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->d:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 1
    :cond_3
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->k:I

    sub-int/2addr v2, v1

    if-le p1, v2, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    return v0
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn;

    .line 2
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/h;->d(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 3
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/h$a;

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object v1

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/i;->l(Landroid/view/View;)V

    .line 5
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v1

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->l:Z

    if-eqz v5, :cond_0

    const v5, 0x7f07007c

    goto :goto_0

    :cond_0
    const v5, 0x7f07007b

    :goto_0
    invoke-static {v4, v5}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->b(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->d:I

    if-ne v4, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 9
    :cond_2
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/h;->d(I)I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    .line 10
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/h$b;

    .line 11
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->f:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->g:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$b;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$b;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->f:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->g:I

    invoke-static {p2}, Lk1;->a(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, v0, v2

    if-gez p2, :cond_3

    .line 14
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$b;->b(Lcom/camerasideas/collagemaker/activity/adapter/h$b;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    const p2, 0x7f070142

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 15
    :cond_3
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$b;->b(Lcom/camerasideas/collagemaker/activity/adapter/h$b;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    const p2, 0x7f070141

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 16
    :cond_4
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/h;->d(I)I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_7

    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/h;->d(I)I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/h;->d(I)I

    move-result v1

    if-ne v1, v2, :cond_e

    .line 18
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/h$a;

    .line 19
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object v1

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/i;->l(Landroid/view/View;)V

    .line 20
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object v1

    invoke-virtual {v0}, Lhn;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/camerasideas/collagemaker/activity/w0;->t(Ljava/lang/Integer;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v1

    .line 21
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->b(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/h;->e0(Landroid/widget/ImageView;)Lok;

    .line 22
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->b(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 23
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->d:I

    if-ne v4, p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 24
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 25
    :cond_7
    :goto_3
    move-object v1, p1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/adapter/h$a;

    .line 26
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 27
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->j:I

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 28
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->c(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    invoke-static {v4}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    invoke-static {p1, v4}, Luq;->t(Landroid/view/View;Z)V

    if-eqz v0, :cond_e

    .line 29
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object p1

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/i;->l(Landroid/view/View;)V

    .line 30
    invoke-virtual {v0}, Lhn;->e()I

    move-result p1

    if-nez p1, :cond_c

    .line 31
    invoke-virtual {v0}, Lhn;->d()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 32
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object p1

    invoke-virtual {v0}, Lhn;->d()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 33
    :cond_a
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object p1

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Lhn;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :goto_6
    invoke-virtual {v0}, Lhn;->b()Ljava/lang/String;

    move-result-object p1

    const-string v4, "#FFFFFF"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 35
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object p1

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    const v5, 0x7f07022a

    invoke-static {v4, v5}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 36
    :cond_b
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 37
    :cond_c
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->c:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object p1

    invoke-virtual {v0}, Lhn;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/camerasideas/collagemaker/activity/w0;->t(Ljava/lang/Integer;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object p1

    .line 38
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/h;->e0(Landroid/widget/ImageView;)Lok;

    .line 39
    :goto_7
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;->b(Lcom/camerasideas/collagemaker/activity/adapter/h$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    invoke-static {p1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 40
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->d:I

    if-ne v4, p2, :cond_d

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 41
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_e
    :goto_9
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/h$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0071

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 2
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/h$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0068

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$b;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_1
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/h$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b006c

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public z(I)Lhn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/h;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
