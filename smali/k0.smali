.class public Lk0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0$a;
    }
.end annotation


# static fields
.field private static o:I = 0x3e8


# instance fields
.field a:I

.field private b:Lk0$a;

.field private c:I

.field private d:I

.field e:[Lh0;

.field public f:Z

.field private g:[Z

.field h:I

.field i:I

.field private j:I

.field final k:Li0;

.field private l:[Lm0;

.field private m:I

.field private final n:Lk0$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0;->a:I

    const/16 v1, 0x20

    .line 3
    iput v1, p0, Lk0;->c:I

    .line 4
    iput v1, p0, Lk0;->d:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lk0;->e:[Lh0;

    .line 6
    iput-boolean v0, p0, Lk0;->f:Z

    new-array v2, v1, [Z

    .line 7
    iput-object v2, p0, Lk0;->g:[Z

    const/4 v2, 0x1

    .line 8
    iput v2, p0, Lk0;->h:I

    .line 9
    iput v0, p0, Lk0;->i:I

    .line 10
    iput v1, p0, Lk0;->j:I

    .line 11
    sget v2, Lk0;->o:I

    new-array v2, v2, [Lm0;

    iput-object v2, p0, Lk0;->l:[Lm0;

    .line 12
    iput v0, p0, Lk0;->m:I

    new-array v0, v1, [Lh0;

    .line 13
    iput-object v0, p0, Lk0;->e:[Lh0;

    .line 14
    invoke-direct {p0}, Lk0;->u()V

    .line 15
    new-instance v0, Li0;

    invoke-direct {v0}, Li0;-><init>()V

    iput-object v0, p0, Lk0;->k:Li0;

    .line 16
    new-instance v1, Lj0;

    invoke-direct {v1, v0}, Lj0;-><init>(Li0;)V

    iput-object v1, p0, Lk0;->b:Lk0$a;

    .line 17
    new-instance v1, Lh0;

    invoke-direct {v1, v0}, Lh0;-><init>(Li0;)V

    iput-object v1, p0, Lk0;->n:Lk0$a;

    return-void
.end method

.method private a(Lm0$a;Ljava/lang/String;)Lm0;
    .locals 2

    .line 1
    iget-object p2, p0, Lk0;->k:Li0;

    iget-object p2, p2, Li0;->b:Ll0;

    invoke-virtual {p2}, Ll0;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm0;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lm0;

    invoke-direct {p2, p1}, Lm0;-><init>(Lm0$a;)V

    .line 3
    iput-object p1, p2, Lm0;->f:Lm0$a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lm0;->d()V

    .line 5
    iput-object p1, p2, Lm0;->f:Lm0$a;

    .line 6
    :goto_0
    iget p1, p0, Lk0;->m:I

    sget v0, Lk0;->o:I

    if-lt p1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 7
    sput v0, Lk0;->o:I

    .line 8
    iget-object p1, p0, Lk0;->l:[Lm0;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lm0;

    iput-object p1, p0, Lk0;->l:[Lm0;

    .line 9
    :cond_1
    iget-object p1, p0, Lk0;->l:[Lm0;

    iget v0, p0, Lk0;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk0;->m:I

    aput-object p2, p1, v0

    return-object p2
.end method

.method private final i(Lh0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0;->e:[Lh0;

    iget v1, p0, Lk0;->i:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Lk0;->k:Li0;

    iget-object v2, v2, Li0;->a:Ll0;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ll0;->b(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lk0;->e:[Lh0;

    iget v1, p0, Lk0;->i:I

    aput-object p1, v0, v1

    .line 4
    iget-object v0, p1, Lh0;->a:Lm0;

    iput v1, v0, Lm0;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lk0;->i:I

    .line 6
    invoke-virtual {v0, p1}, Lm0;->e(Lh0;)V

    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lk0;->i:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lk0;->e:[Lh0;

    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, Lh0;->a:Lm0;

    iget v1, v1, Lh0;->b:F

    iput v1, v2, Lm0;->d:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    iget v0, p0, Lk0;->c:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lk0;->c:I

    .line 2
    iget-object v1, p0, Lk0;->e:[Lh0;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh0;

    iput-object v0, p0, Lk0;->e:[Lh0;

    .line 3
    iget-object v0, p0, Lk0;->k:Li0;

    iget-object v1, v0, Li0;->c:[Lm0;

    iget v2, p0, Lk0;->c:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lm0;

    iput-object v1, v0, Li0;->c:[Lm0;

    .line 4
    iget v0, p0, Lk0;->c:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lk0;->g:[Z

    .line 5
    iput v0, p0, Lk0;->d:I

    .line 6
    iput v0, p0, Lk0;->j:I

    return-void
.end method

.method private final t(Lk0$a;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lk0;->h:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lk0;->g:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_a

    add-int/lit8 v3, v3, 0x1

    .line 3
    iget v4, p0, Lk0;->h:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_1

    return v3

    .line 4
    :cond_1
    move-object v4, p1

    check-cast v4, Lh0;

    .line 5
    iget-object v5, v4, Lh0;->a:Lm0;

    if-eqz v5, :cond_2

    .line 6
    iget-object v6, p0, Lk0;->g:[Z

    iget v5, v5, Lm0;->a:I

    aput-boolean v1, v6, v5

    .line 7
    :cond_2
    iget-object v5, p0, Lk0;->g:[Z

    .line 8
    iget-object v4, v4, Lh0;->c:Lg0;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lg0;->g([ZLm0;)Lm0;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 9
    iget-object v5, p0, Lk0;->g:[Z

    iget v6, v4, Lm0;->a:I

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_3

    return v3

    .line 10
    :cond_3
    aput-boolean v1, v5, v6

    :cond_4
    if-eqz v4, :cond_9

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 11
    :goto_2
    iget v9, p0, Lk0;->i:I

    if-ge v7, v9, :cond_8

    .line 12
    iget-object v9, p0, Lk0;->e:[Lh0;

    aget-object v9, v9, v7

    .line 13
    iget-object v10, v9, Lh0;->a:Lm0;

    .line 14
    iget-object v10, v10, Lm0;->f:Lm0$a;

    sget-object v11, Lm0$a;->b:Lm0$a;

    if-ne v10, v11, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    iget-boolean v10, v9, Lh0;->d:Z

    if-eqz v10, :cond_6

    goto :goto_3

    .line 16
    :cond_6
    iget-object v10, v9, Lh0;->c:Lg0;

    invoke-virtual {v10, v4}, Lg0;->d(Lm0;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 17
    iget-object v10, v9, Lh0;->c:Lg0;

    invoke-virtual {v10, v4}, Lg0;->f(Lm0;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_7

    .line 18
    iget v9, v9, Lh0;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_7

    move v8, v7

    move v5, v9

    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    if-le v8, v6, :cond_9

    .line 19
    iget-object v5, p0, Lk0;->e:[Lh0;

    aget-object v5, v5, v8

    .line 20
    iget-object v7, v5, Lh0;->a:Lm0;

    iput v6, v7, Lm0;->b:I

    .line 21
    invoke-virtual {v5, v4}, Lh0;->h(Lm0;)V

    .line 22
    iget-object v4, v5, Lh0;->a:Lm0;

    iput v8, v4, Lm0;->b:I

    .line 23
    invoke-virtual {v4, v5}, Lm0;->e(Lh0;)V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_a
    return v3
.end method

.method private u()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lk0;->e:[Lh0;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lk0;->k:Li0;

    iget-object v2, v2, Li0;->a:Ll0;

    invoke-virtual {v2, v1}, Ll0;->b(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lk0;->e:[Lh0;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final w(Lh0;)V
    .locals 2

    .line 1
    iget v0, p0, Lk0;->i:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p1, Lh0;->c:Lg0;

    iget-object v1, p0, Lk0;->e:[Lh0;

    invoke-virtual {v0, p1, v1}, Lg0;->o(Lh0;[Lh0;)V

    .line 3
    iget-object v0, p1, Lh0;->c:Lg0;

    iget v0, v0, Lg0;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lh0;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lm0;Lm0;IFLm0;Lm0;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lk0;->m()Lh0;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 2
    iget-object p3, v0, Lh0;->c:Lg0;

    invoke-virtual {p3, p1, v1}, Lg0;->l(Lm0;F)V

    .line 3
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, p6, v1}, Lg0;->l(Lm0;F)V

    .line 4
    iget-object p1, v0, Lh0;->c:Lg0;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Lg0;->l(Lm0;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    .line 5
    iget-object p4, v0, Lh0;->c:Lg0;

    invoke-virtual {p4, p1, v1}, Lg0;->l(Lm0;F)V

    .line 6
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, p2, v3}, Lg0;->l(Lm0;F)V

    .line 7
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, p5, v3}, Lg0;->l(Lm0;F)V

    .line 8
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, p6, v1}, Lg0;->l(Lm0;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 9
    iput p1, v0, Lh0;->b:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    .line 10
    iget-object p4, v0, Lh0;->c:Lg0;

    invoke-virtual {p4, p1, v3}, Lg0;->l(Lm0;F)V

    .line 11
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, p2, v1}, Lg0;->l(Lm0;F)V

    int-to-float p1, p3

    .line 12
    iput p1, v0, Lh0;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    .line 13
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, p5, v3}, Lg0;->l(Lm0;F)V

    .line 14
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, p6, v1}, Lg0;->l(Lm0;F)V

    int-to-float p1, p7

    .line 15
    iput p1, v0, Lh0;->b:F

    goto :goto_0

    .line 16
    :cond_4
    iget-object v2, v0, Lh0;->c:Lg0;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-virtual {v2, p1, v5}, Lg0;->l(Lm0;F)V

    .line 17
    iget-object p1, v0, Lh0;->c:Lg0;

    mul-float v2, v4, v3

    invoke-virtual {p1, p2, v2}, Lg0;->l(Lm0;F)V

    .line 18
    iget-object p1, v0, Lh0;->c:Lg0;

    mul-float v3, v3, p4

    invoke-virtual {p1, p5, v3}, Lg0;->l(Lm0;F)V

    .line 19
    iget-object p1, v0, Lh0;->c:Lg0;

    mul-float v1, v1, p4

    invoke-virtual {p1, p6, v1}, Lg0;->l(Lm0;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p2, p1

    .line 20
    iput p2, v0, Lh0;->b:F

    :cond_6
    :goto_0
    const/4 p1, 0x6

    if-eq p8, p1, :cond_7

    .line 21
    invoke-virtual {v0, p0, p8}, Lh0;->b(Lk0;I)Lh0;

    .line 22
    :cond_7
    invoke-virtual {p0, v0}, Lk0;->c(Lh0;)V

    return-void
.end method

.method public c(Lh0;)V
    .locals 10

    .line 1
    iget v0, p0, Lk0;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lk0;->j:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lk0;->h:I

    add-int/2addr v0, v1

    iget v2, p0, Lk0;->d:I

    if-lt v0, v2, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lk0;->q()V

    .line 3
    :cond_1
    iget-boolean v0, p1, Lh0;->d:Z

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 4
    invoke-direct {p0, p1}, Lk0;->w(Lh0;)V

    .line 5
    iget-object v0, p1, Lh0;->a:Lm0;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget v0, p1, Lh0;->b:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p1, Lh0;->c:Lg0;

    iget v0, v0, Lg0;->a:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    return-void

    .line 6
    :cond_3
    iget v0, p1, Lh0;->b:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_4

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v0, v0, v4

    .line 7
    iput v0, p1, Lh0;->b:F

    .line 8
    iget-object v0, p1, Lh0;->c:Lg0;

    invoke-virtual {v0}, Lg0;->j()V

    .line 9
    :cond_4
    iget-object v0, p1, Lh0;->c:Lg0;

    invoke-virtual {v0, p0}, Lg0;->b(Lk0;)Lm0;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {p1, v0}, Lh0;->h(Lm0;)V

    const/4 v0, 0x0

    .line 11
    :goto_1
    iget-object v4, p1, Lh0;->c:Lg0;

    iget v4, v4, Lg0;->a:I

    if-nez v4, :cond_6

    .line 12
    iput-boolean v1, p1, Lh0;->d:Z

    :cond_6
    if-eqz v0, :cond_c

    .line 13
    iget v0, p0, Lk0;->h:I

    add-int/2addr v0, v1

    iget v4, p0, Lk0;->d:I

    if-lt v0, v4, :cond_7

    .line 14
    invoke-direct {p0}, Lk0;->q()V

    .line 15
    :cond_7
    sget-object v0, Lm0$a;->d:Lm0$a;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lk0;->a(Lm0$a;Ljava/lang/String;)Lm0;

    move-result-object v0

    .line 16
    iget v5, p0, Lk0;->a:I

    add-int/2addr v5, v1

    iput v5, p0, Lk0;->a:I

    .line 17
    iget v6, p0, Lk0;->h:I

    add-int/2addr v6, v1

    iput v6, p0, Lk0;->h:I

    .line 18
    iput v5, v0, Lm0;->a:I

    .line 19
    iget-object v6, p0, Lk0;->k:Li0;

    iget-object v6, v6, Li0;->c:[Lm0;

    aput-object v0, v6, v5

    .line 20
    iput-object v0, p1, Lh0;->a:Lm0;

    .line 21
    invoke-direct {p0, p1}, Lk0;->i(Lh0;)V

    .line 22
    iget-object v5, p0, Lk0;->n:Lk0$a;

    check-cast v5, Lh0;

    .line 23
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iput-object v4, v5, Lh0;->a:Lm0;

    .line 25
    iget-object v6, v5, Lh0;->c:Lg0;

    invoke-virtual {v6}, Lg0;->c()V

    const/4 v6, 0x0

    .line 26
    :goto_2
    iget-object v7, p1, Lh0;->c:Lg0;

    iget v8, v7, Lg0;->a:I

    if-ge v6, v8, :cond_8

    .line 27
    invoke-virtual {v7, v6}, Lg0;->h(I)Lm0;

    move-result-object v7

    .line 28
    iget-object v8, p1, Lh0;->c:Lg0;

    invoke-virtual {v8, v6}, Lg0;->i(I)F

    move-result v8

    .line 29
    iget-object v9, v5, Lh0;->c:Lg0;

    invoke-virtual {v9, v7, v8, v1}, Lg0;->a(Lm0;FZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 30
    :cond_8
    iget-object v5, p0, Lk0;->n:Lk0$a;

    invoke-direct {p0, v5}, Lk0;->t(Lk0$a;)I

    .line 31
    iget v5, v0, Lm0;->b:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_b

    .line 32
    iget-object v5, p1, Lh0;->a:Lm0;

    if-ne v5, v0, :cond_9

    .line 33
    iget-object v5, p1, Lh0;->c:Lg0;

    invoke-virtual {v5, v4, v0}, Lg0;->g([ZLm0;)Lm0;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 34
    invoke-virtual {p1, v0}, Lh0;->h(Lm0;)V

    .line 35
    :cond_9
    iget-boolean v0, p1, Lh0;->d:Z

    if-nez v0, :cond_a

    .line 36
    iget-object v0, p1, Lh0;->a:Lm0;

    invoke-virtual {v0, p1}, Lm0;->e(Lh0;)V

    .line 37
    :cond_a
    iget v0, p0, Lk0;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lk0;->i:I

    :cond_b
    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    .line 38
    :goto_3
    iget-object v4, p1, Lh0;->a:Lm0;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lm0;->f:Lm0$a;

    sget-object v5, Lm0$a;->b:Lm0$a;

    if-eq v4, v5, :cond_e

    iget v4, p1, Lh0;->b:F

    cmpg-float v3, v4, v3

    if-ltz v3, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_4
    if-nez v1, :cond_f

    return-void

    :cond_f
    move v2, v0

    :cond_10
    if-nez v2, :cond_11

    .line 39
    invoke-direct {p0, p1}, Lk0;->i(Lh0;)V

    :cond_11
    return-void
.end method

.method public d(Lm0;Lm0;II)Lh0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk0;->m()Lh0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-gez p3, :cond_0

    mul-int/lit8 p3, p3, -0x1

    const/4 v1, 0x1

    :cond_0
    int-to-float p3, p3

    .line 2
    iput p3, v0, Lh0;->b:F

    :cond_1
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    .line 3
    iget-object v1, v0, Lh0;->c:Lg0;

    invoke-virtual {v1, p1, p3}, Lg0;->l(Lm0;F)V

    .line 4
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, p2, v2}, Lg0;->l(Lm0;F)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, v0, Lh0;->c:Lg0;

    invoke-virtual {v1, p1, v2}, Lg0;->l(Lm0;F)V

    .line 6
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, p2, p3}, Lg0;->l(Lm0;F)V

    :goto_0
    const/4 p1, 0x6

    if-eq p4, p1, :cond_3

    .line 7
    invoke-virtual {v0, p0, p4}, Lh0;->b(Lk0;I)Lh0;

    .line 8
    :cond_3
    invoke-virtual {p0, v0}, Lk0;->c(Lh0;)V

    return-object v0
.end method

.method public e(Lm0;I)V
    .locals 4

    .line 1
    iget v0, p1, Lm0;->b:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 2
    iget-object v3, p0, Lk0;->e:[Lh0;

    aget-object v0, v3, v0

    .line 3
    iget-boolean v3, v0, Lh0;->d:Z

    if-eqz v3, :cond_0

    int-to-float p1, p2

    .line 4
    iput p1, v0, Lh0;->b:F

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, v0, Lh0;->c:Lg0;

    iget v3, v3, Lg0;->a:I

    if-nez v3, :cond_1

    .line 6
    iput-boolean v1, v0, Lh0;->d:Z

    int-to-float p1, p2

    .line 7
    iput p1, v0, Lh0;->b:F

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lk0;->m()Lh0;

    move-result-object v0

    if-gez p2, :cond_2

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 9
    iput p2, v0, Lh0;->b:F

    .line 10
    iget-object p2, v0, Lh0;->c:Lg0;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Lg0;->l(Lm0;F)V

    goto :goto_0

    :cond_2
    int-to-float p2, p2

    .line 11
    iput p2, v0, Lh0;->b:F

    .line 12
    iget-object p2, v0, Lh0;->c:Lg0;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v1}, Lg0;->l(Lm0;F)V

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Lk0;->c(Lh0;)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Lk0;->m()Lh0;

    move-result-object v0

    .line 15
    iput-object p1, v0, Lh0;->a:Lm0;

    int-to-float p2, p2

    .line 16
    iput p2, p1, Lm0;->d:F

    .line 17
    iput p2, v0, Lh0;->b:F

    .line 18
    iput-boolean v1, v0, Lh0;->d:Z

    .line 19
    invoke-virtual {p0, v0}, Lk0;->c(Lh0;)V

    :goto_1
    return-void
.end method

.method public f(Lm0;Lm0;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk0;->m()Lh0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lk0;->n()Lm0;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lm0;->c:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lh0;->e(Lm0;Lm0;Lm0;I)Lh0;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 5
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, v1}, Lg0;->f(Lm0;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p4, p2}, Lk0;->k(ILjava/lang/String;)Lm0;

    move-result-object p2

    .line 7
    iget-object p3, v0, Lh0;->c:Lg0;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Lg0;->l(Lm0;F)V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lk0;->c(Lh0;)V

    return-void
.end method

.method public g(Lm0;Lm0;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk0;->m()Lh0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lk0;->n()Lm0;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lm0;->c:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lh0;->f(Lm0;Lm0;Lm0;I)Lh0;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 5
    iget-object p1, v0, Lh0;->c:Lg0;

    invoke-virtual {p1, v1}, Lg0;->f(Lm0;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p4, p2}, Lk0;->k(ILjava/lang/String;)Lm0;

    move-result-object p2

    .line 7
    iget-object p3, v0, Lh0;->c:Lg0;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Lg0;->l(Lm0;F)V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lk0;->c(Lh0;)V

    return-void
.end method

.method public h(Lm0;Lm0;Lm0;Lm0;FI)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lk0;->m()Lh0;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lh0;->c(Lm0;Lm0;Lm0;Lm0;F)Lh0;

    const/4 p1, 0x6

    if-eq p6, p1, :cond_0

    .line 3
    invoke-virtual {v6, p0, p6}, Lh0;->b(Lk0;I)Lh0;

    .line 4
    :cond_0
    invoke-virtual {p0, v6}, Lk0;->c(Lh0;)V

    return-void
.end method

.method public k(ILjava/lang/String;)Lm0;
    .locals 2

    .line 1
    iget v0, p0, Lk0;->h:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lk0;->d:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lk0;->q()V

    .line 3
    :cond_0
    sget-object v0, Lm0$a;->e:Lm0$a;

    invoke-direct {p0, v0, p2}, Lk0;->a(Lm0$a;Ljava/lang/String;)Lm0;

    move-result-object p2

    .line 4
    iget v0, p0, Lk0;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk0;->a:I

    .line 5
    iget v1, p0, Lk0;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk0;->h:I

    .line 6
    iput v0, p2, Lm0;->a:I

    .line 7
    iput p1, p2, Lm0;->c:I

    .line 8
    iget-object p1, p0, Lk0;->k:Li0;

    iget-object p1, p1, Li0;->c:[Lm0;

    aput-object p2, p1, v0

    .line 9
    iget-object p1, p0, Lk0;->b:Lk0$a;

    invoke-interface {p1, p2}, Lk0$a;->a(Lm0;)V

    return-object p2
.end method

.method public l(Ljava/lang/Object;)Lm0;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget v1, p0, Lk0;->h:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lk0;->d:I

    if-lt v1, v2, :cond_1

    .line 2
    invoke-direct {p0}, Lk0;->q()V

    .line 3
    :cond_1
    instance-of v1, p1, Lq0;

    if-eqz v1, :cond_5

    .line 4
    check-cast p1, Lq0;

    invoke-virtual {p1}, Lq0;->e()Lm0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lq0;->j()V

    .line 6
    invoke-virtual {p1}, Lq0;->e()Lm0;

    move-result-object p1

    move-object v0, p1

    .line 7
    :cond_2
    iget p1, v0, Lm0;->a:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, Lk0;->a:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Lk0;->k:Li0;

    iget-object v2, v2, Li0;->c:[Lm0;

    aget-object v2, v2, p1

    if-nez v2, :cond_5

    :cond_3
    if-eq p1, v1, :cond_4

    .line 8
    invoke-virtual {v0}, Lm0;->d()V

    .line 9
    :cond_4
    iget p1, p0, Lk0;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk0;->a:I

    .line 10
    iget v1, p0, Lk0;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk0;->h:I

    .line 11
    iput p1, v0, Lm0;->a:I

    .line 12
    sget-object v1, Lm0$a;->b:Lm0$a;

    iput-object v1, v0, Lm0;->f:Lm0$a;

    .line 13
    iget-object v1, p0, Lk0;->k:Li0;

    iget-object v1, v1, Li0;->c:[Lm0;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public m()Lh0;
    .locals 2

    .line 1
    iget-object v0, p0, Lk0;->k:Li0;

    iget-object v0, v0, Li0;->a:Ll0;

    invoke-virtual {v0}, Ll0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lh0;

    iget-object v1, p0, Lk0;->k:Li0;

    invoke-direct {v0, v1}, Lh0;-><init>(Li0;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lh0;->a:Lm0;

    .line 4
    iget-object v1, v0, Lh0;->c:Lg0;

    invoke-virtual {v1}, Lg0;->c()V

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lh0;->b:F

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lh0;->d:Z

    .line 7
    :goto_0
    invoke-static {}, Lm0;->b()V

    return-object v0
.end method

.method public n()Lm0;
    .locals 3

    .line 1
    iget v0, p0, Lk0;->h:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lk0;->d:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lk0;->q()V

    .line 3
    :cond_0
    sget-object v0, Lm0$a;->d:Lm0$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lk0;->a(Lm0$a;Ljava/lang/String;)Lm0;

    move-result-object v0

    .line 4
    iget v1, p0, Lk0;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk0;->a:I

    .line 5
    iget v2, p0, Lk0;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lk0;->h:I

    .line 6
    iput v1, v0, Lm0;->a:I

    .line 7
    iget-object v2, p0, Lk0;->k:Li0;

    iget-object v2, v2, Li0;->c:[Lm0;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public o()Li0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk0;->k:Li0;

    return-object v0
.end method

.method public p(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lq0;

    invoke-virtual {p1}, Lq0;->e()Lm0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Lm0;->d:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public r()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lk0;->f:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lk0;->i:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lk0;->e:[Lh0;

    aget-object v2, v2, v1

    .line 4
    iget-boolean v2, v2, Lh0;->d:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lk0;->b:Lk0$a;

    invoke-virtual {p0, v0}, Lk0;->s(Lk0$a;)V

    goto :goto_2

    .line 6
    :cond_2
    invoke-direct {p0}, Lk0;->j()V

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lk0;->b:Lk0$a;

    invoke-virtual {p0, v0}, Lk0;->s(Lk0$a;)V

    :goto_2
    return-void
.end method

.method s(Lk0$a;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lh0;

    invoke-direct {v0, v1}, Lk0;->w(Lh0;)V

    .line 2
    sget-object v1, Lm0$a;->b:Lm0$a;

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, v0, Lk0;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    .line 4
    iget-object v4, v0, Lk0;->e:[Lh0;

    aget-object v7, v4, v3

    iget-object v7, v7, Lh0;->a:Lm0;

    .line 5
    iget-object v7, v7, Lm0;->f:Lm0$a;

    if-ne v7, v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    aget-object v4, v4, v3

    iget v4, v4, Lh0;->b:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-nez v3, :cond_e

    add-int/2addr v4, v6

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 7
    :goto_4
    iget v13, v0, Lk0;->i:I

    if-ge v9, v13, :cond_b

    .line 8
    iget-object v13, v0, Lk0;->e:[Lh0;

    aget-object v13, v13, v9

    .line 9
    iget-object v14, v13, Lh0;->a:Lm0;

    .line 10
    iget-object v14, v14, Lm0;->f:Lm0$a;

    if-ne v14, v1, :cond_3

    goto :goto_8

    .line 11
    :cond_3
    iget-boolean v14, v13, Lh0;->d:Z

    if-eqz v14, :cond_4

    goto :goto_8

    .line 12
    :cond_4
    iget v14, v13, Lh0;->b:F

    cmpg-float v14, v14, v5

    if-gez v14, :cond_a

    const/4 v14, 0x1

    .line 13
    :goto_5
    iget v15, v0, Lk0;->h:I

    if-ge v14, v15, :cond_a

    .line 14
    iget-object v15, v0, Lk0;->k:Li0;

    iget-object v15, v15, Li0;->c:[Lm0;

    aget-object v15, v15, v14

    .line 15
    iget-object v2, v13, Lh0;->c:Lg0;

    invoke-virtual {v2, v15}, Lg0;->f(Lm0;)F

    move-result v2

    cmpg-float v16, v2, v5

    if-gtz v16, :cond_5

    goto :goto_7

    :cond_5
    const/4 v5, 0x0

    :goto_6
    const/4 v6, 0x7

    if-ge v5, v6, :cond_9

    .line 16
    iget-object v6, v15, Lm0;->e:[F

    aget v6, v6, v5

    div-float/2addr v6, v2

    cmpg-float v17, v6, v7

    if-gez v17, :cond_6

    if-eq v5, v12, :cond_7

    :cond_6
    if-le v5, v12, :cond_8

    :cond_7
    move v12, v5

    move v7, v6

    move v10, v9

    move v11, v14

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    if-eq v10, v8, :cond_c

    .line 17
    iget-object v2, v0, Lk0;->e:[Lh0;

    aget-object v2, v2, v10

    .line 18
    iget-object v5, v2, Lh0;->a:Lm0;

    iput v8, v5, Lm0;->b:I

    .line 19
    iget-object v5, v0, Lk0;->k:Li0;

    iget-object v5, v5, Li0;->c:[Lm0;

    aget-object v5, v5, v11

    invoke-virtual {v2, v5}, Lh0;->h(Lm0;)V

    .line 20
    iget-object v5, v2, Lh0;->a:Lm0;

    iput v10, v5, Lm0;->b:I

    .line 21
    invoke-virtual {v5, v2}, Lm0;->e(Lh0;)V

    goto :goto_9

    :cond_c
    const/4 v3, 0x1

    .line 22
    :goto_9
    iget v2, v0, Lk0;->h:I

    div-int/lit8 v2, v2, 0x2

    if-le v4, v2, :cond_d

    const/4 v3, 0x1

    :cond_d
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 23
    :cond_e
    invoke-direct/range {p0 .. p1}, Lk0;->t(Lk0$a;)I

    .line 24
    invoke-direct/range {p0 .. p0}, Lk0;->j()V

    return-void
.end method

.method public v()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lk0;->k:Li0;

    iget-object v3, v2, Li0;->c:[Lm0;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 2
    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lm0;->d()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v2, Li0;->b:Ll0;

    iget-object v2, p0, Lk0;->l:[Lm0;

    iget v3, p0, Lk0;->m:I

    invoke-virtual {v1, v2, v3}, Ll0;->c([Ljava/lang/Object;I)V

    .line 5
    iput v0, p0, Lk0;->m:I

    .line 6
    iget-object v1, p0, Lk0;->k:Li0;

    iget-object v1, v1, Li0;->c:[Lm0;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iput v0, p0, Lk0;->a:I

    .line 8
    iget-object v1, p0, Lk0;->b:Lk0$a;

    check-cast v1, Lh0;

    .line 9
    iget-object v3, v1, Lh0;->c:Lg0;

    invoke-virtual {v3}, Lg0;->c()V

    .line 10
    iput-object v2, v1, Lh0;->a:Lm0;

    const/4 v2, 0x0

    .line 11
    iput v2, v1, Lh0;->b:F

    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lk0;->h:I

    const/4 v1, 0x0

    .line 13
    :goto_1
    iget v2, p0, Lk0;->i:I

    if-ge v1, v2, :cond_2

    .line 14
    iget-object v2, p0, Lk0;->e:[Lh0;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-direct {p0}, Lk0;->u()V

    .line 16
    iput v0, p0, Lk0;->i:I

    return-void
.end method
