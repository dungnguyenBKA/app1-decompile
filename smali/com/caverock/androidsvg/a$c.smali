.class Lcom/caverock/androidsvg/a$c;
.super Lcom/caverock/androidsvg/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/f$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public r()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/caverock/androidsvg/f$b;->b:I

    goto :goto_2

    .line 3
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/f$b;->b:I

    .line 4
    iget-object v1, p0, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/f$b;->a()I

    move-result v1

    :cond_1
    const/16 v3, 0x7a

    const/16 v4, 0x5f

    const/16 v5, 0x5a

    const/16 v6, 0x61

    const/16 v7, 0x41

    if-lt v1, v7, :cond_2

    if-le v1, v5, :cond_4

    :cond_2
    if-lt v1, v6, :cond_3

    if-le v1, v3, :cond_4

    :cond_3
    if-ne v1, v4, :cond_9

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/f$b;->a()I

    move-result v1

    :goto_0
    if-lt v1, v7, :cond_5

    if-le v1, v5, :cond_8

    :cond_5
    if-lt v1, v6, :cond_6

    if-le v1, v3, :cond_8

    :cond_6
    const/16 v8, 0x30

    if-lt v1, v8, :cond_7

    const/16 v8, 0x39

    if-le v1, v8, :cond_8

    :cond_7
    if-eq v1, v2, :cond_8

    if-eq v1, v4, :cond_8

    .line 7
    iget v1, p0, Lcom/caverock/androidsvg/f$b;->b:I

    goto :goto_1

    .line 8
    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/f$b;->a()I

    move-result v1

    goto :goto_0

    :cond_9
    move v1, v0

    .line 9
    :goto_1
    iput v0, p0, Lcom/caverock/androidsvg/f$b;->b:I

    move v0, v1

    .line 10
    :goto_2
    iget v1, p0, Lcom/caverock/androidsvg/f$b;->b:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 11
    :cond_a
    iget-object v2, p0, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 12
    iput v0, p0, Lcom/caverock/androidsvg/f$b;->b:I

    return-object v1
.end method
