.class public Lw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw9$b;,
        Lw9$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lu8;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lt8;

.field private final e:Lw8;

.field private final f:Lu8;

.field private final g:Lw9$a;

.field private final h:Lw9$b;

.field private final i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lu8;Ljava/util/List;Lt8;Lw8;Lu8;Lw9$a;Lw9$b;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lu8;",
            "Ljava/util/List<",
            "Lu8;",
            ">;",
            "Lt8;",
            "Lw8;",
            "Lu8;",
            "Lw9$a;",
            "Lw9$b;",
            "FZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lw9;->b:Lu8;

    .line 4
    iput-object p3, p0, Lw9;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lw9;->d:Lt8;

    .line 6
    iput-object p5, p0, Lw9;->e:Lw8;

    .line 7
    iput-object p6, p0, Lw9;->f:Lu8;

    .line 8
    iput-object p7, p0, Lw9;->g:Lw9$a;

    .line 9
    iput-object p8, p0, Lw9;->h:Lw9$b;

    .line 10
    iput p9, p0, Lw9;->i:F

    .line 11
    iput-boolean p10, p0, Lw9;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 1

    .line 1
    new-instance v0, Lq7;

    invoke-direct {v0, p1, p2, p0}, Lq7;-><init>(Lcom/airbnb/lottie/g;Lz9;Lw9;)V

    return-object v0
.end method

.method public b()Lw9$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9;->g:Lw9$a;

    return-object v0
.end method

.method public c()Lt8;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9;->d:Lt8;

    return-object v0
.end method

.method public d()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9;->b:Lu8;

    return-object v0
.end method

.method public e()Lw9$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9;->h:Lw9$b;

    return-object v0
.end method

.method public f()Ljava/util/List;
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
    iget-object v0, p0, Lw9;->c:Ljava/util/List;

    return-object v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lw9;->i:F

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lw8;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9;->e:Lw8;

    return-object v0
.end method

.method public j()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9;->f:Lu8;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw9;->j:Z

    return v0
.end method
