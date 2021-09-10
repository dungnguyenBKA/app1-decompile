.class public Lm1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final a:Ls1;

.field private static final b:Lc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lr1;

    invoke-direct {v0}, Lr1;-><init>()V

    sput-object v0, Lm1;->a:Ls1;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Lq1;

    invoke-direct {v0}, Lq1;-><init>()V

    sput-object v0, Lm1;->a:Ls1;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 4
    new-instance v0, Lp1;

    invoke-direct {v0}, Lp1;-><init>()V

    sput-object v0, Lm1;->a:Ls1;

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 5
    invoke-static {}, Lo1;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v0, Lo1;

    invoke-direct {v0}, Lo1;-><init>()V

    sput-object v0, Lm1;->a:Ls1;

    goto :goto_0

    :cond_3
    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 7
    new-instance v0, Ln1;

    invoke-direct {v0}, Ln1;-><init>()V

    sput-object v0, Lm1;->a:Ls1;

    goto :goto_0

    .line 8
    :cond_4
    new-instance v0, Ls1;

    invoke-direct {v0}, Ls1;-><init>()V

    sput-object v0, Lm1;->a:Ls1;

    .line 9
    :goto_0
    new-instance v0, Lc0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lc0;-><init>(I)V

    sput-object v0, Lm1;->b:Lc0;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v0, Lm1;->a:Ls1;

    invoke-virtual {v0, p1}, Ls1;->g(Landroid/graphics/Typeface;)Lf1;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4
    invoke-virtual {v0, p0, v1, v2, p2}, Ls1;->a(Landroid/content/Context;Lf1;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 5
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Landroid/os/CancellationSignal;[Le2$f;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object p1, Lm1;->a:Ls1;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2, p3}, Ls1;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[Le2$f;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Le1;Landroid/content/res/Resources;IILj1;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 8

    .line 1
    instance-of v0, p1, Lh1;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lh1;

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 3
    invoke-virtual {p1}, Lh1;->a()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    :goto_0
    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz p7, :cond_2

    .line 4
    invoke-virtual {p1}, Lh1;->c()I

    move-result p7

    move v6, p7

    goto :goto_2

    :cond_2
    const/4 p7, -0x1

    const/4 v6, -0x1

    .line 5
    :goto_2
    invoke-virtual {p1}, Lh1;->b()Ld2;

    move-result-object v2

    move-object v1, p0

    move-object v3, p5

    move-object v4, p6

    move v7, p4

    invoke-static/range {v1 .. v7}, Le2;->c(Landroid/content/Context;Ld2;Lj1;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3

    .line 6
    :cond_3
    sget-object p7, Lm1;->a:Ls1;

    check-cast p1, Lf1;

    invoke-virtual {p7, p0, p1, p2, p4}, Ls1;->a(Landroid/content/Context;Lf1;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p5, :cond_5

    if-eqz p0, :cond_4

    .line 7
    invoke-virtual {p5, p0, p6}, Lj1;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_3

    :cond_4
    const/4 p1, -0x3

    .line 8
    invoke-virtual {p5, p1, p6}, Lj1;->a(ILandroid/os/Handler;)V

    :cond_5
    :goto_3
    if-eqz p0, :cond_6

    .line 9
    sget-object p1, Lm1;->b:Lc0;

    invoke-static {p2, p3, p4}, Lm1;->e(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    .line 1
    sget-object v0, Lm1;->a:Ls1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ls1;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p2, p4}, Lm1;->e(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Lm1;->b:Lc0;

    invoke-virtual {p2, p1, p0}, Lc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static e(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, Lm1;->b:Lc0;

    invoke-static {p0, p1, p2}, Lm1;->e(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method
