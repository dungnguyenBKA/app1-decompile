.class public Lh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0$a;


# instance fields
.field a:Lm0;

.field b:F

.field public final c:Lg0;

.field d:Z


# direct methods
.method public constructor <init>(Li0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lh0;->a:Lm0;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lh0;->b:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lh0;->d:Z

    .line 5
    new-instance v0, Lg0;

    invoke-direct {v0, p0, p1}, Lg0;-><init>(Lh0;Li0;)V

    iput-object v0, p0, Lh0;->c:Lg0;

    return-void
.end method


# virtual methods
.method public a(Lm0;)V
    .locals 3

    .line 1
    iget v0, p1, Lm0;->c:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/high16 v1, 0x447a0000    # 1000.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const v1, 0x49742400    # 1000000.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const v1, 0x4e6e6b28    # 1.0E9f

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const v1, 0x5368d4a5    # 1.0E12f

    .line 2
    :cond_4
    :goto_0
    iget-object v0, p0, Lh0;->c:Lg0;

    invoke-virtual {v0, p1, v1}, Lg0;->l(Lm0;F)V

    return-void
.end method

.method public b(Lk0;I)Lh0;
    .locals 3

    .line 1
    iget-object v0, p0, Lh0;->c:Lg0;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Lk0;->k(ILjava/lang/String;)Lm0;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lg0;->l(Lm0;F)V

    .line 2
    iget-object v0, p0, Lh0;->c:Lg0;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Lk0;->k(ILjava/lang/String;)Lm0;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, p2}, Lg0;->l(Lm0;F)V

    return-object p0
.end method

.method public c(Lm0;Lm0;Lm0;Lm0;F)Lh0;
    .locals 2

    .line 1
    iget-object v0, p0, Lh0;->c:Lg0;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Lg0;->l(Lm0;F)V

    .line 2
    iget-object p1, p0, Lh0;->c:Lg0;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Lg0;->l(Lm0;F)V

    .line 3
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p3, p5}, Lg0;->l(Lm0;F)V

    .line 4
    iget-object p1, p0, Lh0;->c:Lg0;

    neg-float p2, p5

    invoke-virtual {p1, p4, p2}, Lg0;->l(Lm0;F)V

    return-object p0
.end method

.method public d(FFFLm0;Lm0;Lm0;Lm0;)Lh0;
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lh0;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_3

    cmpl-float v3, p1, p3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v3, p1, v0

    if-nez v3, :cond_1

    .line 2
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p4, v2}, Lg0;->l(Lm0;F)V

    .line 3
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p5, v1}, Lg0;->l(Lm0;F)V

    goto :goto_1

    :cond_1
    cmpl-float v0, p3, v0

    if-nez v0, :cond_2

    .line 4
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p6, v2}, Lg0;->l(Lm0;F)V

    .line 5
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p7, v1}, Lg0;->l(Lm0;F)V

    goto :goto_1

    :cond_2
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    .line 6
    iget-object p2, p0, Lh0;->c:Lg0;

    invoke-virtual {p2, p4, v2}, Lg0;->l(Lm0;F)V

    .line 7
    iget-object p2, p0, Lh0;->c:Lg0;

    invoke-virtual {p2, p5, v1}, Lg0;->l(Lm0;F)V

    .line 8
    iget-object p2, p0, Lh0;->c:Lg0;

    invoke-virtual {p2, p7, p1}, Lg0;->l(Lm0;F)V

    .line 9
    iget-object p2, p0, Lh0;->c:Lg0;

    neg-float p1, p1

    invoke-virtual {p2, p6, p1}, Lg0;->l(Lm0;F)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p4, v2}, Lg0;->l(Lm0;F)V

    .line 11
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p5, v1}, Lg0;->l(Lm0;F)V

    .line 12
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p7, v2}, Lg0;->l(Lm0;F)V

    .line 13
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p6, v1}, Lg0;->l(Lm0;F)V

    :goto_1
    return-object p0
.end method

.method public e(Lm0;Lm0;Lm0;I)Lh0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    .line 1
    iput p4, p0, Lh0;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lh0;->c:Lg0;

    invoke-virtual {v0, p1, p4}, Lg0;->l(Lm0;F)V

    .line 3
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p2, v1}, Lg0;->l(Lm0;F)V

    .line 4
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p3, v1}, Lg0;->l(Lm0;F)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lh0;->c:Lg0;

    invoke-virtual {v0, p1, v1}, Lg0;->l(Lm0;F)V

    .line 6
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p2, p4}, Lg0;->l(Lm0;F)V

    .line 7
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p3, p4}, Lg0;->l(Lm0;F)V

    :goto_0
    return-object p0
.end method

.method public f(Lm0;Lm0;Lm0;I)Lh0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    .line 1
    iput p4, p0, Lh0;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lh0;->c:Lg0;

    invoke-virtual {v0, p1, p4}, Lg0;->l(Lm0;F)V

    .line 3
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p2, v1}, Lg0;->l(Lm0;F)V

    .line 4
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p3, p4}, Lg0;->l(Lm0;F)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lh0;->c:Lg0;

    invoke-virtual {v0, p1, v1}, Lg0;->l(Lm0;F)V

    .line 6
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p2, p4}, Lg0;->l(Lm0;F)V

    .line 7
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p3, v1}, Lg0;->l(Lm0;F)V

    :goto_0
    return-object p0
.end method

.method public g(Lm0;Lm0;Lm0;Lm0;F)Lh0;
    .locals 2

    .line 1
    iget-object v0, p0, Lh0;->c:Lg0;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p3, v1}, Lg0;->l(Lm0;F)V

    .line 2
    iget-object p3, p0, Lh0;->c:Lg0;

    invoke-virtual {p3, p4, v1}, Lg0;->l(Lm0;F)V

    .line 3
    iget-object p3, p0, Lh0;->c:Lg0;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-virtual {p3, p1, p4}, Lg0;->l(Lm0;F)V

    .line 4
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, p2, p4}, Lg0;->l(Lm0;F)V

    neg-float p1, p5

    .line 5
    iput p1, p0, Lh0;->b:F

    return-object p0
.end method

.method h(Lm0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh0;->a:Lm0;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lh0;->c:Lg0;

    invoke-virtual {v2, v0, v1}, Lg0;->l(Lm0;F)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lh0;->a:Lm0;

    .line 4
    :cond_0
    iget-object v0, p0, Lh0;->c:Lg0;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lg0;->m(Lm0;Z)F

    move-result v0

    mul-float v0, v0, v1

    .line 5
    iput-object p1, p0, Lh0;->a:Lm0;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget p1, p0, Lh0;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Lh0;->b:F

    .line 7
    iget-object p1, p0, Lh0;->c:Lg0;

    invoke-virtual {p1, v0}, Lg0;->e(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lh0;->a:Lm0;

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lh0;->a:Lm0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, " = "

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget v1, p0, Lh0;->b:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lh0;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    iget-object v4, p0, Lh0;->c:Lg0;

    iget v4, v4, Lg0;->a:I

    :goto_2
    if-ge v3, v4, :cond_8

    .line 7
    iget-object v5, p0, Lh0;->c:Lg0;

    invoke-virtual {v5, v3}, Lg0;->h(I)Lm0;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_6

    .line 8
    :cond_2
    iget-object v5, p0, Lh0;->c:Lg0;

    invoke-virtual {v5, v3}, Lg0;->i(I)F

    move-result v5

    cmpl-float v6, v5, v2

    if-nez v6, :cond_3

    goto :goto_6

    :cond_3
    const-string v6, "null"

    const/high16 v7, -0x40800000    # -1.0f

    if-nez v1, :cond_4

    cmpg-float v1, v5, v2

    if-gez v1, :cond_6

    const-string v1, "- "

    .line 9
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    cmpl-float v1, v5, v2

    if-lez v1, :cond_5

    const-string v1, " + "

    .line 10
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    const-string v1, " - "

    .line 11
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    mul-float v5, v5, v7

    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v5, v1

    if-nez v1, :cond_7

    .line 12
    invoke-static {v0, v6}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 13
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v1, 0x1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    const-string v1, "0.0"

    .line 14
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method
