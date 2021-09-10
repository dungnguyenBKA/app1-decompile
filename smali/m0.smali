.class public Lm0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0$a;
    }
.end annotation


# static fields
.field private static j:I = 0x1


# instance fields
.field public a:I

.field b:I

.field public c:I

.field public d:F

.field e:[F

.field f:Lm0$a;

.field g:[Lh0;

.field h:I

.field public i:I


# direct methods
.method public constructor <init>(Lm0$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lm0;->a:I

    .line 3
    iput v0, p0, Lm0;->b:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lm0;->c:I

    const/4 v1, 0x7

    new-array v1, v1, [F

    .line 5
    iput-object v1, p0, Lm0;->e:[F

    const/16 v1, 0x8

    new-array v1, v1, [Lh0;

    .line 6
    iput-object v1, p0, Lm0;->g:[Lh0;

    .line 7
    iput v0, p0, Lm0;->h:I

    .line 8
    iput v0, p0, Lm0;->i:I

    .line 9
    iput-object p1, p0, Lm0;->f:Lm0$a;

    return-void
.end method

.method static b()V
    .locals 1

    .line 1
    sget v0, Lm0;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lm0;->j:I

    return-void
.end method


# virtual methods
.method public final a(Lh0;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lm0;->h:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lm0;->g:[Lh0;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lm0;->g:[Lh0;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 4
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh0;

    iput-object v0, p0, Lm0;->g:[Lh0;

    .line 5
    :cond_2
    iget-object v0, p0, Lm0;->g:[Lh0;

    iget v1, p0, Lm0;->h:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lm0;->h:I

    return-void
.end method

.method public final c(Lh0;)V
    .locals 5

    .line 1
    iget v0, p0, Lm0;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lm0;->g:[Lh0;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    :goto_1
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lm0;->g:[Lh0;

    add-int v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, p1, v4

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4
    :cond_0
    iget p1, p0, Lm0;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lm0;->h:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    sget-object v0, Lm0$a;->f:Lm0$a;

    iput-object v0, p0, Lm0;->f:Lm0$a;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm0;->c:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lm0;->a:I

    .line 4
    iput v1, p0, Lm0;->b:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lm0;->d:F

    .line 6
    iput v0, p0, Lm0;->h:I

    .line 7
    iput v0, p0, Lm0;->i:I

    return-void
.end method

.method public final e(Lh0;)V
    .locals 5

    .line 1
    iget v0, p0, Lm0;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lm0;->g:[Lh0;

    aget-object v4, v3, v2

    iget-object v4, v4, Lh0;->c:Lg0;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3, p1, v1}, Lg0;->n(Lh0;Lh0;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lm0;->h:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method
