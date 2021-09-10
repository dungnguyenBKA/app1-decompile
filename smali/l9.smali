.class public Ll9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lm9;

.field private final c:Lv8;

.field private final d:Lw8;

.field private final e:Ly8;

.field private final f:Ly8;

.field private final g:Lu8;

.field private final h:Lw9$a;

.field private final i:Lw9$b;

.field private final j:F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lu8;

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm9;Lv8;Lw8;Ly8;Ly8;Lu8;Lw9$a;Lw9$b;FLjava/util/List;Lu8;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lm9;",
            "Lv8;",
            "Lw8;",
            "Ly8;",
            "Ly8;",
            "Lu8;",
            "Lw9$a;",
            "Lw9$b;",
            "F",
            "Ljava/util/List<",
            "Lu8;",
            ">;",
            "Lu8;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ll9;->b:Lm9;

    .line 4
    iput-object p3, p0, Ll9;->c:Lv8;

    .line 5
    iput-object p4, p0, Ll9;->d:Lw8;

    .line 6
    iput-object p5, p0, Ll9;->e:Ly8;

    .line 7
    iput-object p6, p0, Ll9;->f:Ly8;

    .line 8
    iput-object p7, p0, Ll9;->g:Lu8;

    .line 9
    iput-object p8, p0, Ll9;->h:Lw9$a;

    .line 10
    iput-object p9, p0, Ll9;->i:Lw9$b;

    .line 11
    iput p10, p0, Ll9;->j:F

    .line 12
    iput-object p11, p0, Ll9;->k:Ljava/util/List;

    .line 13
    iput-object p12, p0, Ll9;->l:Lu8;

    .line 14
    iput-boolean p13, p0, Ll9;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 1

    .line 1
    new-instance v0, Lh7;

    invoke-direct {v0, p1, p2, p0}, Lh7;-><init>(Lcom/airbnb/lottie/g;Lz9;Ll9;)V

    return-object v0
.end method

.method public b()Lw9$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->h:Lw9$a;

    return-object v0
.end method

.method public c()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->l:Lu8;

    return-object v0
.end method

.method public d()Ly8;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->f:Ly8;

    return-object v0
.end method

.method public e()Lv8;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->c:Lv8;

    return-object v0
.end method

.method public f()Lm9;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->b:Lm9;

    return-object v0
.end method

.method public g()Lw9$b;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->i:Lw9$b;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll9;->k:Ljava/util/List;

    return-object v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Ll9;->j:F

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lw8;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->d:Lw8;

    return-object v0
.end method

.method public l()Ly8;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->e:Ly8;

    return-object v0
.end method

.method public m()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->g:Lu8;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll9;->m:Z

    return v0
.end method
