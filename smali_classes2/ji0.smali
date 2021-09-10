.class public final Lji0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh0$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ldi0;

.field private final c:Lgi0;

.field private final d:Lzh0;

.field private final e:I

.field private final f:Ljh0;

.field private final g:Log0;

.field private final h:Lzg0;

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ldi0;Lgi0;Lzh0;ILjh0;Log0;Lzg0;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh0;",
            ">;",
            "Ldi0;",
            "Lgi0;",
            "Lzh0;",
            "I",
            "Ljh0;",
            "Log0;",
            "Lzg0;",
            "III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lji0;->a:Ljava/util/List;

    .line 3
    iput-object p4, p0, Lji0;->d:Lzh0;

    .line 4
    iput-object p2, p0, Lji0;->b:Ldi0;

    .line 5
    iput-object p3, p0, Lji0;->c:Lgi0;

    .line 6
    iput p5, p0, Lji0;->e:I

    .line 7
    iput-object p6, p0, Lji0;->f:Ljh0;

    .line 8
    iput-object p7, p0, Lji0;->g:Log0;

    .line 9
    iput-object p8, p0, Lji0;->h:Lzg0;

    .line 10
    iput p9, p0, Lji0;->i:I

    .line 11
    iput p10, p0, Lji0;->j:I

    .line 12
    iput p11, p0, Lji0;->k:I

    return-void
.end method


# virtual methods
.method public a()Log0;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->g:Log0;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lji0;->i:I

    return v0
.end method

.method public c()Lsg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->d:Lzh0;

    return-object v0
.end method

.method public d()Lzg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->h:Lzg0;

    return-object v0
.end method

.method public e()Lgi0;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->c:Lgi0;

    return-object v0
.end method

.method public f(Ljh0;)Llh0;
    .locals 3

    .line 1
    iget-object v0, p0, Lji0;->b:Ldi0;

    iget-object v1, p0, Lji0;->c:Lgi0;

    iget-object v2, p0, Lji0;->d:Lzh0;

    invoke-virtual {p0, p1, v0, v1, v2}, Lji0;->g(Ljh0;Ldi0;Lgi0;Lzh0;)Llh0;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljh0;Ldi0;Lgi0;Lzh0;)Llh0;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lji0;->e:I

    iget-object v2, v0, Lji0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2
    iget v1, v0, Lji0;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lji0;->l:I

    .line 3
    iget-object v1, v0, Lji0;->c:Lgi0;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Lji0;->d:Lzh0;

    invoke-virtual/range {p1 .. p1}, Ljh0;->h()Ldh0;

    move-result-object v4

    invoke-virtual {v1, v4}, Lzh0;->p(Ldh0;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lji0;->a:Ljava/util/List;

    iget v5, v0, Lji0;->e:I

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    iget-object v1, v0, Lji0;->c:Lgi0;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lji0;->l:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lji0;->a:Ljava/util/List;

    iget v6, v0, Lji0;->e:I

    sub-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_3
    :goto_1
    new-instance v1, Lji0;

    iget-object v2, v0, Lji0;->a:Ljava/util/List;

    iget v15, v0, Lji0;->e:I

    add-int/lit8 v10, v15, 0x1

    iget-object v12, v0, Lji0;->g:Log0;

    iget-object v13, v0, Lji0;->h:Lzg0;

    iget v14, v0, Lji0;->i:I

    iget v11, v0, Lji0;->j:I

    iget v9, v0, Lji0;->k:I

    move-object v5, v1

    move-object v6, v2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v16, v9

    move-object/from16 v9, p4

    move/from16 v17, v11

    move-object/from16 v11, p1

    move-object/from16 v18, v4

    move v4, v15

    move/from16 v15, v17

    invoke-direct/range {v5 .. v16}, Lji0;-><init>(Ljava/util/List;Ldi0;Lgi0;Lzh0;ILjh0;Log0;Lzg0;III)V

    .line 8
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh0;

    .line 9
    invoke-interface {v2, v1}, Leh0;->intercept(Leh0$a;)Llh0;

    move-result-object v4

    if-eqz p3, :cond_5

    .line 10
    iget v5, v0, Lji0;->e:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iget-object v7, v0, Lji0;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    iget v1, v1, Lji0;->l:I

    if-ne v1, v6, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v1, "interceptor "

    if-eqz v4, :cond_7

    .line 12
    invoke-virtual {v4}, Llh0;->j()Lmh0;

    move-result-object v3

    if-eqz v3, :cond_6

    return-object v4

    .line 13
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_7
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lji0;->j:I

    return v0
.end method

.method public i()Ljh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->f:Ljh0;

    return-object v0
.end method

.method public j()Ldi0;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->b:Ldi0;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lji0;->k:I

    return v0
.end method
