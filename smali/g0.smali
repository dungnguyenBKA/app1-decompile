.class public Lg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field private final b:Lh0;

.field private final c:Li0;

.field private d:I

.field private e:[I

.field private f:[I

.field private g:[F

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method constructor <init>(Lh0;Li0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg0;->a:I

    const/16 v1, 0x8

    .line 3
    iput v1, p0, Lg0;->d:I

    new-array v2, v1, [I

    .line 4
    iput-object v2, p0, Lg0;->e:[I

    new-array v2, v1, [I

    .line 5
    iput-object v2, p0, Lg0;->f:[I

    new-array v1, v1, [F

    .line 6
    iput-object v1, p0, Lg0;->g:[F

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lg0;->h:I

    .line 8
    iput v1, p0, Lg0;->i:I

    .line 9
    iput-boolean v0, p0, Lg0;->j:Z

    .line 10
    iput-object p1, p0, Lg0;->b:Lh0;

    .line 11
    iput-object p2, p0, Lg0;->c:Li0;

    return-void
.end method

.method private k(Lm0;)Z
    .locals 1

    .line 1
    iget p1, p1, Lm0;->i:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method final a(Lm0;FZ)V
    .locals 10

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v1, p0, Lg0;->h:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 2
    iput v2, p0, Lg0;->h:I

    .line 3
    iget-object p3, p0, Lg0;->g:[F

    aput p2, p3, v2

    .line 4
    iget-object p2, p0, Lg0;->e:[I

    iget p3, p1, Lm0;->a:I

    aput p3, p2, v2

    .line 5
    iget-object p2, p0, Lg0;->f:[I

    aput v3, p2, v2

    .line 6
    iget p2, p1, Lm0;->i:I

    add-int/2addr p2, v4

    iput p2, p1, Lm0;->i:I

    .line 7
    iget-object p2, p0, Lg0;->b:Lh0;

    invoke-virtual {p1, p2}, Lm0;->a(Lh0;)V

    .line 8
    iget p1, p0, Lg0;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Lg0;->a:I

    .line 9
    iget-boolean p1, p0, Lg0;->j:Z

    if-nez p1, :cond_1

    .line 10
    iget p1, p0, Lg0;->i:I

    add-int/2addr p1, v4

    iput p1, p0, Lg0;->i:I

    .line 11
    iget-object p2, p0, Lg0;->e:[I

    array-length p3, p2

    if-lt p1, p3, :cond_1

    .line 12
    iput-boolean v4, p0, Lg0;->j:Z

    .line 13
    array-length p1, p2

    sub-int/2addr p1, v4

    iput p1, p0, Lg0;->i:I

    :cond_1
    return-void

    :cond_2
    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_0
    if-eq v1, v3, :cond_9

    .line 14
    iget v7, p0, Lg0;->a:I

    if-ge v5, v7, :cond_9

    .line 15
    iget-object v7, p0, Lg0;->e:[I

    aget v8, v7, v1

    .line 16
    iget v9, p1, Lm0;->a:I

    if-ne v8, v9, :cond_7

    .line 17
    iget-object v2, p0, Lg0;->g:[F

    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    .line 18
    aget p2, v2, v1

    cmpl-float p2, p2, v0

    if-nez p2, :cond_6

    .line 19
    iget p2, p0, Lg0;->h:I

    if-ne v1, p2, :cond_3

    .line 20
    iget-object p2, p0, Lg0;->f:[I

    aget p2, p2, v1

    iput p2, p0, Lg0;->h:I

    goto :goto_1

    .line 21
    :cond_3
    iget-object p2, p0, Lg0;->f:[I

    aget v0, p2, v1

    aput v0, p2, v6

    :goto_1
    if-eqz p3, :cond_4

    .line 22
    iget-object p2, p0, Lg0;->b:Lh0;

    invoke-virtual {p1, p2}, Lm0;->c(Lh0;)V

    .line 23
    :cond_4
    iget-boolean p2, p0, Lg0;->j:Z

    if-eqz p2, :cond_5

    .line 24
    iput v1, p0, Lg0;->i:I

    .line 25
    :cond_5
    iget p2, p1, Lm0;->i:I

    sub-int/2addr p2, v4

    iput p2, p1, Lm0;->i:I

    .line 26
    iget p1, p0, Lg0;->a:I

    sub-int/2addr p1, v4

    iput p1, p0, Lg0;->a:I

    :cond_6
    return-void

    .line 27
    :cond_7
    aget v7, v7, v1

    if-ge v7, v9, :cond_8

    move v6, v1

    .line 28
    :cond_8
    iget-object v7, p0, Lg0;->f:[I

    aget v1, v7, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29
    :cond_9
    iget p3, p0, Lg0;->i:I

    add-int/lit8 v0, p3, 0x1

    .line 30
    iget-boolean v1, p0, Lg0;->j:Z

    if-eqz v1, :cond_b

    .line 31
    iget-object v0, p0, Lg0;->e:[I

    aget v1, v0, p3

    if-ne v1, v3, :cond_a

    goto :goto_2

    .line 32
    :cond_a
    array-length p3, v0

    goto :goto_2

    :cond_b
    move p3, v0

    .line 33
    :goto_2
    iget-object v0, p0, Lg0;->e:[I

    array-length v1, v0

    if-lt p3, v1, :cond_d

    .line 34
    iget v1, p0, Lg0;->a:I

    array-length v0, v0

    if-ge v1, v0, :cond_d

    const/4 v0, 0x0

    .line 35
    :goto_3
    iget-object v1, p0, Lg0;->e:[I

    array-length v5, v1

    if-ge v0, v5, :cond_d

    .line 36
    aget v1, v1, v0

    if-ne v1, v3, :cond_c

    move p3, v0

    goto :goto_4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 37
    :cond_d
    :goto_4
    iget-object v0, p0, Lg0;->e:[I

    array-length v1, v0

    if-lt p3, v1, :cond_e

    .line 38
    array-length p3, v0

    .line 39
    iget v0, p0, Lg0;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg0;->d:I

    .line 40
    iput-boolean v2, p0, Lg0;->j:Z

    add-int/lit8 v1, p3, -0x1

    .line 41
    iput v1, p0, Lg0;->i:I

    .line 42
    iget-object v1, p0, Lg0;->g:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lg0;->g:[F

    .line 43
    iget-object v0, p0, Lg0;->e:[I

    iget v1, p0, Lg0;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lg0;->e:[I

    .line 44
    iget-object v0, p0, Lg0;->f:[I

    iget v1, p0, Lg0;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lg0;->f:[I

    .line 45
    :cond_e
    iget-object v0, p0, Lg0;->e:[I

    iget v1, p1, Lm0;->a:I

    aput v1, v0, p3

    .line 46
    iget-object v0, p0, Lg0;->g:[F

    aput p2, v0, p3

    if-eq v6, v3, :cond_f

    .line 47
    iget-object p2, p0, Lg0;->f:[I

    aget v0, p2, v6

    aput v0, p2, p3

    .line 48
    aput p3, p2, v6

    goto :goto_5

    .line 49
    :cond_f
    iget-object p2, p0, Lg0;->f:[I

    iget v0, p0, Lg0;->h:I

    aput v0, p2, p3

    .line 50
    iput p3, p0, Lg0;->h:I

    .line 51
    :goto_5
    iget p2, p1, Lm0;->i:I

    add-int/2addr p2, v4

    iput p2, p1, Lm0;->i:I

    .line 52
    iget-object p2, p0, Lg0;->b:Lh0;

    invoke-virtual {p1, p2}, Lm0;->a(Lh0;)V

    .line 53
    iget p1, p0, Lg0;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Lg0;->a:I

    .line 54
    iget-boolean p1, p0, Lg0;->j:Z

    if-nez p1, :cond_10

    .line 55
    iget p1, p0, Lg0;->i:I

    add-int/2addr p1, v4

    iput p1, p0, Lg0;->i:I

    .line 56
    :cond_10
    iget p1, p0, Lg0;->i:I

    iget-object p2, p0, Lg0;->e:[I

    array-length p3, p2

    if-lt p1, p3, :cond_11

    .line 57
    iput-boolean v4, p0, Lg0;->j:Z

    .line 58
    array-length p1, p2

    sub-int/2addr p1, v4

    iput p1, p0, Lg0;->i:I

    :cond_11
    return-void
.end method

.method b(Lk0;)Lm0;
    .locals 13

    .line 1
    iget p1, p0, Lg0;->h:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, -0x1

    if-eq p1, v8, :cond_8

    .line 2
    iget v8, p0, Lg0;->a:I

    if-ge v3, v8, :cond_8

    .line 3
    iget-object v8, p0, Lg0;->g:[F

    aget v9, v8, p1

    const v10, 0x3a83126f    # 0.001f

    .line 4
    iget-object v11, p0, Lg0;->c:Li0;

    iget-object v11, v11, Li0;->c:[Lm0;

    iget-object v12, p0, Lg0;->e:[I

    aget v12, v12, p1

    aget-object v11, v11, v12

    cmpg-float v12, v9, v2

    if-gez v12, :cond_0

    const v10, -0x457ced91    # -0.001f

    cmpl-float v10, v9, v10

    if-lez v10, :cond_1

    .line 5
    aput v2, v8, p1

    .line 6
    iget-object v8, p0, Lg0;->b:Lh0;

    invoke-virtual {v11, v8}, Lm0;->c(Lh0;)V

    goto :goto_1

    :cond_0
    cmpg-float v10, v9, v10

    if-gez v10, :cond_1

    .line 7
    aput v2, v8, p1

    .line 8
    iget-object v8, p0, Lg0;->b:Lh0;

    invoke-virtual {v11, v8}, Lm0;->c(Lh0;)V

    :goto_1
    const/4 v9, 0x0

    :cond_1
    const/4 v8, 0x1

    cmpl-float v10, v9, v2

    if-eqz v10, :cond_7

    .line 9
    iget-object v10, v11, Lm0;->f:Lm0$a;

    sget-object v12, Lm0$a;->b:Lm0$a;

    if-ne v10, v12, :cond_4

    if-nez v1, :cond_2

    .line 10
    invoke-direct {p0, v11}, Lg0;->k(Lm0;)Z

    move-result v1

    :goto_2
    move v4, v1

    move v6, v9

    move-object v1, v11

    goto :goto_4

    :cond_2
    cmpl-float v10, v6, v9

    if-lez v10, :cond_3

    .line 11
    invoke-direct {p0, v11}, Lg0;->k(Lm0;)Z

    move-result v1

    goto :goto_2

    :cond_3
    if-nez v4, :cond_7

    .line 12
    invoke-direct {p0, v11}, Lg0;->k(Lm0;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v6, v9

    move-object v1, v11

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    if-nez v1, :cond_7

    cmpg-float v10, v9, v2

    if-gez v10, :cond_7

    if-nez v0, :cond_5

    .line 13
    invoke-direct {p0, v11}, Lg0;->k(Lm0;)Z

    move-result v0

    :goto_3
    move v5, v0

    move v7, v9

    move-object v0, v11

    goto :goto_4

    :cond_5
    cmpl-float v10, v7, v9

    if-lez v10, :cond_6

    .line 14
    invoke-direct {p0, v11}, Lg0;->k(Lm0;)Z

    move-result v0

    goto :goto_3

    :cond_6
    if-nez v5, :cond_7

    .line 15
    invoke-direct {p0, v11}, Lg0;->k(Lm0;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v7, v9

    move-object v0, v11

    const/4 v5, 0x1

    .line 16
    :cond_7
    :goto_4
    iget-object v8, p0, Lg0;->f:[I

    aget p1, v8, p1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    return-object v1

    :cond_9
    return-object v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 2
    iget v4, p0, Lg0;->a:I

    if-ge v2, v4, :cond_1

    .line 3
    iget-object v3, p0, Lg0;->c:Li0;

    iget-object v3, v3, Li0;->c:[Lm0;

    iget-object v4, p0, Lg0;->e:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, p0, Lg0;->b:Lh0;

    invoke-virtual {v3, v4}, Lm0;->c(Lh0;)V

    .line 5
    :cond_0
    iget-object v3, p0, Lg0;->f:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iput v3, p0, Lg0;->h:I

    .line 7
    iput v3, p0, Lg0;->i:I

    .line 8
    iput-boolean v1, p0, Lg0;->j:Z

    .line 9
    iput v1, p0, Lg0;->a:I

    return-void
.end method

.method final d(Lm0;)Z
    .locals 6

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    .line 2
    iget v4, p0, Lg0;->a:I

    if-ge v3, v4, :cond_2

    .line 3
    iget-object v4, p0, Lg0;->e:[I

    aget v4, v4, v0

    iget v5, p1, Lm0;->a:I

    if-ne v4, v5, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    iget-object v4, p0, Lg0;->f:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method e(F)V
    .locals 4

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2
    iget v2, p0, Lg0;->a:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lg0;->g:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 4
    iget-object v2, p0, Lg0;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lm0;)F
    .locals 4

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2
    iget v2, p0, Lg0;->a:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lg0;->e:[I

    aget v2, v2, v0

    iget v3, p1, Lm0;->a:I

    if-ne v2, v3, :cond_0

    .line 4
    iget-object p1, p0, Lg0;->g:[F

    aget p1, p1, v0

    return p1

    .line 5
    :cond_0
    iget-object v2, p0, Lg0;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method g([ZLm0;)Lm0;
    .locals 9

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 2
    iget v5, p0, Lg0;->a:I

    if-ge v2, v5, :cond_3

    .line 3
    iget-object v5, p0, Lg0;->g:[F

    aget v6, v5, v0

    cmpg-float v6, v6, v1

    if-gez v6, :cond_2

    .line 4
    iget-object v6, p0, Lg0;->c:Li0;

    iget-object v6, v6, Li0;->c:[Lm0;

    iget-object v7, p0, Lg0;->e:[I

    aget v7, v7, v0

    aget-object v6, v6, v7

    if-eqz p1, :cond_0

    .line 5
    iget v7, v6, Lm0;->a:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_2

    :cond_0
    if-eq v6, p2, :cond_2

    .line 6
    iget-object v7, v6, Lm0;->f:Lm0$a;

    sget-object v8, Lm0$a;->d:Lm0$a;

    if-eq v7, v8, :cond_1

    sget-object v8, Lm0$a;->e:Lm0$a;

    if-ne v7, v8, :cond_2

    .line 7
    :cond_1
    aget v5, v5, v0

    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    move v4, v5

    move-object v3, v6

    .line 8
    :cond_2
    iget-object v5, p0, Lg0;->f:[I

    aget v0, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method final h(I)Lm0;
    .locals 3

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2
    iget v2, p0, Lg0;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lg0;->c:Li0;

    iget-object p1, p1, Li0;->c:[Lm0;

    iget-object v1, p0, Lg0;->e:[I

    aget v0, v1, v0

    aget-object p1, p1, v0

    return-object p1

    .line 4
    :cond_0
    iget-object v2, p0, Lg0;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final i(I)F
    .locals 3

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2
    iget v2, p0, Lg0;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lg0;->g:[F

    aget p1, p1, v0

    return p1

    .line 4
    :cond_0
    iget-object v2, p0, Lg0;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method j()V
    .locals 5

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2
    iget v2, p0, Lg0;->a:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lg0;->g:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    aput v3, v2, v0

    .line 4
    iget-object v2, p0, Lg0;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(Lm0;F)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 1
    invoke-virtual {p0, p1, v0}, Lg0;->m(Lm0;Z)F

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lg0;->h:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 3
    iput v2, p0, Lg0;->h:I

    .line 4
    iget-object v1, p0, Lg0;->g:[F

    aput p2, v1, v2

    .line 5
    iget-object p2, p0, Lg0;->e:[I

    iget v1, p1, Lm0;->a:I

    aput v1, p2, v2

    .line 6
    iget-object p2, p0, Lg0;->f:[I

    aput v3, p2, v2

    .line 7
    iget p2, p1, Lm0;->i:I

    add-int/2addr p2, v0

    iput p2, p1, Lm0;->i:I

    .line 8
    iget-object p2, p0, Lg0;->b:Lh0;

    invoke-virtual {p1, p2}, Lm0;->a(Lh0;)V

    .line 9
    iget p1, p0, Lg0;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lg0;->a:I

    .line 10
    iget-boolean p1, p0, Lg0;->j:Z

    if-nez p1, :cond_1

    .line 11
    iget p1, p0, Lg0;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lg0;->i:I

    .line 12
    iget-object p2, p0, Lg0;->e:[I

    array-length v1, p2

    if-lt p1, v1, :cond_1

    .line 13
    iput-boolean v0, p0, Lg0;->j:Z

    .line 14
    array-length p1, p2

    sub-int/2addr p1, v0

    iput p1, p0, Lg0;->i:I

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    if-eq v1, v3, :cond_5

    .line 15
    iget v6, p0, Lg0;->a:I

    if-ge v4, v6, :cond_5

    .line 16
    iget-object v6, p0, Lg0;->e:[I

    aget v7, v6, v1

    iget v8, p1, Lm0;->a:I

    if-ne v7, v8, :cond_3

    .line 17
    iget-object p1, p0, Lg0;->g:[F

    aput p2, p1, v1

    return-void

    .line 18
    :cond_3
    aget v6, v6, v1

    if-ge v6, v8, :cond_4

    move v5, v1

    .line 19
    :cond_4
    iget-object v6, p0, Lg0;->f:[I

    aget v1, v6, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_5
    iget v1, p0, Lg0;->i:I

    add-int/lit8 v4, v1, 0x1

    .line 21
    iget-boolean v6, p0, Lg0;->j:Z

    if-eqz v6, :cond_7

    .line 22
    iget-object v4, p0, Lg0;->e:[I

    aget v6, v4, v1

    if-ne v6, v3, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    array-length v1, v4

    goto :goto_1

    :cond_7
    move v1, v4

    .line 24
    :goto_1
    iget-object v4, p0, Lg0;->e:[I

    array-length v6, v4

    if-lt v1, v6, :cond_9

    .line 25
    iget v6, p0, Lg0;->a:I

    array-length v4, v4

    if-ge v6, v4, :cond_9

    const/4 v4, 0x0

    .line 26
    :goto_2
    iget-object v6, p0, Lg0;->e:[I

    array-length v7, v6

    if-ge v4, v7, :cond_9

    .line 27
    aget v6, v6, v4

    if-ne v6, v3, :cond_8

    move v1, v4

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 28
    :cond_9
    :goto_3
    iget-object v4, p0, Lg0;->e:[I

    array-length v6, v4

    if-lt v1, v6, :cond_a

    .line 29
    array-length v1, v4

    .line 30
    iget v4, p0, Lg0;->d:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lg0;->d:I

    .line 31
    iput-boolean v2, p0, Lg0;->j:Z

    add-int/lit8 v2, v1, -0x1

    .line 32
    iput v2, p0, Lg0;->i:I

    .line 33
    iget-object v2, p0, Lg0;->g:[F

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Lg0;->g:[F

    .line 34
    iget-object v2, p0, Lg0;->e:[I

    iget v4, p0, Lg0;->d:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lg0;->e:[I

    .line 35
    iget-object v2, p0, Lg0;->f:[I

    iget v4, p0, Lg0;->d:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lg0;->f:[I

    .line 36
    :cond_a
    iget-object v2, p0, Lg0;->e:[I

    iget v4, p1, Lm0;->a:I

    aput v4, v2, v1

    .line 37
    iget-object v2, p0, Lg0;->g:[F

    aput p2, v2, v1

    if-eq v5, v3, :cond_b

    .line 38
    iget-object p2, p0, Lg0;->f:[I

    aget v2, p2, v5

    aput v2, p2, v1

    .line 39
    aput v1, p2, v5

    goto :goto_4

    .line 40
    :cond_b
    iget-object p2, p0, Lg0;->f:[I

    iget v2, p0, Lg0;->h:I

    aput v2, p2, v1

    .line 41
    iput v1, p0, Lg0;->h:I

    .line 42
    :goto_4
    iget p2, p1, Lm0;->i:I

    add-int/2addr p2, v0

    iput p2, p1, Lm0;->i:I

    .line 43
    iget-object p2, p0, Lg0;->b:Lh0;

    invoke-virtual {p1, p2}, Lm0;->a(Lh0;)V

    .line 44
    iget p1, p0, Lg0;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lg0;->a:I

    .line 45
    iget-boolean p2, p0, Lg0;->j:Z

    if-nez p2, :cond_c

    .line 46
    iget p2, p0, Lg0;->i:I

    add-int/2addr p2, v0

    iput p2, p0, Lg0;->i:I

    .line 47
    :cond_c
    iget-object p2, p0, Lg0;->e:[I

    array-length v1, p2

    if-lt p1, v1, :cond_d

    .line 48
    iput-boolean v0, p0, Lg0;->j:Z

    .line 49
    :cond_d
    iget p1, p0, Lg0;->i:I

    array-length v1, p2

    if-lt p1, v1, :cond_e

    .line 50
    iput-boolean v0, p0, Lg0;->j:Z

    .line 51
    array-length p1, p2

    sub-int/2addr p1, v0

    iput p1, p0, Lg0;->i:I

    :cond_e
    return-void
.end method

.method public final m(Lm0;Z)F
    .locals 8

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-eq v0, v2, :cond_5

    .line 2
    iget v5, p0, Lg0;->a:I

    if-ge v3, v5, :cond_5

    .line 3
    iget-object v5, p0, Lg0;->e:[I

    aget v5, v5, v0

    .line 4
    iget v6, p1, Lm0;->a:I

    if-ne v5, v6, :cond_4

    .line 5
    iget v1, p0, Lg0;->h:I

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lg0;->f:[I

    aget v1, v1, v0

    iput v1, p0, Lg0;->h:I

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lg0;->f:[I

    aget v3, v1, v0

    aput v3, v1, v4

    :goto_1
    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lg0;->b:Lh0;

    invoke-virtual {p1, p2}, Lm0;->c(Lh0;)V

    .line 9
    :cond_2
    iget p2, p1, Lm0;->i:I

    add-int/2addr p2, v2

    iput p2, p1, Lm0;->i:I

    .line 10
    iget p1, p0, Lg0;->a:I

    add-int/2addr p1, v2

    iput p1, p0, Lg0;->a:I

    .line 11
    iget-object p1, p0, Lg0;->e:[I

    aput v2, p1, v0

    .line 12
    iget-boolean p1, p0, Lg0;->j:Z

    if-eqz p1, :cond_3

    .line 13
    iput v0, p0, Lg0;->i:I

    .line 14
    :cond_3
    iget-object p1, p0, Lg0;->g:[F

    aget p1, p1, v0

    return p1

    .line 15
    :cond_4
    iget-object v4, p0, Lg0;->f:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    :cond_5
    return v1
.end method

.method final n(Lh0;Lh0;Z)V
    .locals 8

    .line 1
    iget v0, p0, Lg0;->h:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 2
    iget v4, p0, Lg0;->a:I

    if-ge v2, v4, :cond_3

    .line 3
    iget-object v4, p0, Lg0;->e:[I

    aget v4, v4, v0

    iget-object v5, p2, Lh0;->a:Lm0;

    iget v6, v5, Lm0;->a:I

    if-ne v4, v6, :cond_2

    .line 4
    iget-object v2, p0, Lg0;->g:[F

    aget v0, v2, v0

    .line 5
    invoke-virtual {p0, v5, p3}, Lg0;->m(Lm0;Z)F

    .line 6
    iget-object v2, p2, Lh0;->c:Lg0;

    .line 7
    iget v4, v2, Lg0;->h:I

    const/4 v5, 0x0

    :goto_2
    if-eq v4, v3, :cond_0

    .line 8
    iget v6, v2, Lg0;->a:I

    if-ge v5, v6, :cond_0

    .line 9
    iget-object v6, p0, Lg0;->c:Li0;

    iget-object v6, v6, Li0;->c:[Lm0;

    iget-object v7, v2, Lg0;->e:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    .line 10
    iget-object v7, v2, Lg0;->g:[F

    aget v7, v7, v4

    mul-float v7, v7, v0

    .line 11
    invoke-virtual {p0, v6, v7, p3}, Lg0;->a(Lm0;FZ)V

    .line 12
    iget-object v6, v2, Lg0;->f:[I

    aget v4, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 13
    :cond_0
    iget v2, p1, Lh0;->b:F

    iget v3, p2, Lh0;->b:F

    mul-float v3, v3, v0

    add-float/2addr v3, v2

    iput v3, p1, Lh0;->b:F

    if-eqz p3, :cond_1

    .line 14
    iget-object v0, p2, Lh0;->a:Lm0;

    invoke-virtual {v0, p1}, Lm0;->c(Lh0;)V

    .line 15
    :cond_1
    iget v0, p0, Lg0;->h:I

    goto :goto_0

    .line 16
    :cond_2
    iget-object v3, p0, Lg0;->f:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method o(Lh0;[Lh0;)V
    .locals 9

    .line 1
    iget v0, p0, Lg0;->h:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 2
    iget v4, p0, Lg0;->a:I

    if-ge v2, v4, :cond_2

    .line 3
    iget-object v4, p0, Lg0;->c:Li0;

    iget-object v4, v4, Li0;->c:[Lm0;

    iget-object v5, p0, Lg0;->e:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    .line 4
    iget v5, v4, Lm0;->b:I

    if-eq v5, v3, :cond_1

    .line 5
    iget-object v2, p0, Lg0;->g:[F

    aget v0, v2, v0

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, v4, v2}, Lg0;->m(Lm0;Z)F

    .line 7
    iget v4, v4, Lm0;->b:I

    aget-object v4, p2, v4

    .line 8
    iget-boolean v5, v4, Lh0;->d:Z

    if-nez v5, :cond_0

    .line 9
    iget-object v5, v4, Lh0;->c:Lg0;

    .line 10
    iget v6, v5, Lg0;->h:I

    :goto_2
    if-eq v6, v3, :cond_0

    .line 11
    iget v7, v5, Lg0;->a:I

    if-ge v1, v7, :cond_0

    .line 12
    iget-object v7, p0, Lg0;->c:Li0;

    iget-object v7, v7, Li0;->c:[Lm0;

    iget-object v8, v5, Lg0;->e:[I

    aget v8, v8, v6

    aget-object v7, v7, v8

    .line 13
    iget-object v8, v5, Lg0;->g:[F

    aget v8, v8, v6

    mul-float v8, v8, v0

    .line 14
    invoke-virtual {p0, v7, v8, v2}, Lg0;->a(Lm0;FZ)V

    .line 15
    iget-object v7, v5, Lg0;->f:[I

    aget v6, v7, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_0
    iget v1, p1, Lh0;->b:F

    iget v2, v4, Lh0;->b:F

    mul-float v2, v2, v0

    add-float/2addr v2, v1

    iput v2, p1, Lh0;->b:F

    .line 17
    iget-object v0, v4, Lh0;->a:Lm0;

    invoke-virtual {v0, p1}, Lm0;->c(Lh0;)V

    .line 18
    iget v0, p0, Lg0;->h:I

    goto :goto_0

    .line 19
    :cond_1
    iget-object v3, p0, Lg0;->f:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lg0;->h:I

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 2
    iget v3, p0, Lg0;->a:I

    if-ge v2, v3, :cond_0

    const-string v3, " -> "

    .line 3
    invoke-static {v1, v3}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lg0;->g:[F

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lg0;->c:Li0;

    iget-object v3, v3, Li0;->c:[Lm0;

    iget-object v4, p0, Lg0;->e:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lg0;->f:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
