.class public Lca;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca$b;,
        Lca$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li9;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/airbnb/lottie/e;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Lca$a;

.field private final f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln9;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Le9;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:F

.field private final n:F

.field private final o:I

.field private final p:I

.field private final q:Lc9;

.field private final r:Ld9;

.field private final s:Lu8;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lec<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Lca$b;

.field private final v:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/e;Ljava/lang/String;JLca$a;JLjava/lang/String;Ljava/util/List;Le9;IIIFFIILc9;Ld9;Ljava/util/List;Lca$b;Lu8;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li9;",
            ">;",
            "Lcom/airbnb/lottie/e;",
            "Ljava/lang/String;",
            "J",
            "Lca$a;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ln9;",
            ">;",
            "Le9;",
            "IIIFFII",
            "Lc9;",
            "Ld9;",
            "Ljava/util/List<",
            "Lec<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lca$b;",
            "Lu8;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lca;->a:Ljava/util/List;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lca;->b:Lcom/airbnb/lottie/e;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lca;->c:Ljava/lang/String;

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lca;->d:J

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lca;->e:Lca$a;

    move-wide v1, p7

    .line 7
    iput-wide v1, v0, Lca;->f:J

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lca;->g:Ljava/lang/String;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lca;->h:Ljava/util/List;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lca;->i:Le9;

    move v1, p12

    .line 11
    iput v1, v0, Lca;->j:I

    move/from16 v1, p13

    .line 12
    iput v1, v0, Lca;->k:I

    move/from16 v1, p14

    .line 13
    iput v1, v0, Lca;->l:I

    move/from16 v1, p15

    .line 14
    iput v1, v0, Lca;->m:F

    move/from16 v1, p16

    .line 15
    iput v1, v0, Lca;->n:F

    move/from16 v1, p17

    .line 16
    iput v1, v0, Lca;->o:I

    move/from16 v1, p18

    .line 17
    iput v1, v0, Lca;->p:I

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lca;->q:Lc9;

    move-object/from16 v1, p20

    .line 19
    iput-object v1, v0, Lca;->r:Ld9;

    move-object/from16 v1, p21

    .line 20
    iput-object v1, v0, Lca;->t:Ljava/util/List;

    move-object/from16 v1, p22

    .line 21
    iput-object v1, v0, Lca;->u:Lca$b;

    move-object/from16 v1, p23

    .line 22
    iput-object v1, v0, Lca;->s:Lu8;

    move/from16 v1, p24

    .line 23
    iput-boolean v1, v0, Lca;->v:Z

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->b:Lcom/airbnb/lottie/e;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lca;->d:J

    return-wide v0
.end method

.method c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lec<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lca;->t:Ljava/util/List;

    return-object v0
.end method

.method public d()Lca$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->e:Lca$a;

    return-object v0
.end method

.method e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln9;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lca;->h:Ljava/util/List;

    return-object v0
.end method

.method f()Lca$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->u:Lca$b;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->c:Ljava/lang/String;

    return-object v0
.end method

.method h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lca;->f:J

    return-wide v0
.end method

.method i()I
    .locals 1

    .line 1
    iget v0, p0, Lca;->p:I

    return v0
.end method

.method j()I
    .locals 1

    .line 1
    iget v0, p0, Lca;->o:I

    return v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->g:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li9;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lca;->a:Ljava/util/List;

    return-object v0
.end method

.method m()I
    .locals 1

    .line 1
    iget v0, p0, Lca;->l:I

    return v0
.end method

.method n()I
    .locals 1

    .line 1
    iget v0, p0, Lca;->k:I

    return v0
.end method

.method o()I
    .locals 1

    .line 1
    iget v0, p0, Lca;->j:I

    return v0
.end method

.method p()F
    .locals 2

    .line 1
    iget v0, p0, Lca;->n:F

    iget-object v1, p0, Lca;->b:Lcom/airbnb/lottie/e;

    invoke-virtual {v1}, Lcom/airbnb/lottie/e;->e()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method q()Lc9;
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->q:Lc9;

    return-object v0
.end method

.method r()Ld9;
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->r:Ld9;

    return-object v0
.end method

.method s()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->s:Lu8;

    return-object v0
.end method

.method t()F
    .locals 1

    .line 1
    iget v0, p0, Lca;->m:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lca;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Le9;
    .locals 1

    .line 1
    iget-object v0, p0, Lca;->i:Le9;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lca;->v:Z

    return v0
.end method

.method public w(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lca;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lca;->b:Lcom/airbnb/lottie/e;

    .line 5
    iget-wide v3, p0, Lca;->f:J

    .line 6
    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/e;->r(J)Lca;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v3, v2, Lca;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v3, p0, Lca;->b:Lcom/airbnb/lottie/e;

    .line 11
    iget-wide v4, v2, Lca;->f:J

    .line 12
    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/e;->r(J)Lca;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v3, v2, Lca;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v3, p0, Lca;->b:Lcom/airbnb/lottie/e;

    .line 17
    iget-wide v4, v2, Lca;->f:J

    .line 18
    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/e;->r(J)Lca;

    move-result-object v2

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_1
    iget-object v2, p0, Lca;->h:Ljava/util/List;

    .line 21
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v2, p0, Lca;->h:Ljava/util/List;

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_2
    iget v2, p0, Lca;->j:I

    if-eqz v2, :cond_3

    .line 26
    iget v2, p0, Lca;->k:I

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 28
    iget v5, p0, Lca;->j:I

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 30
    iget v5, p0, Lca;->k:I

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 32
    iget v5, p0, Lca;->l:I

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_3
    iget-object v2, p0, Lca;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v2, p0, Lca;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 39
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
