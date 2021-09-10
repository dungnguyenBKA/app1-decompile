.class public Lp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lp9$a;

.field private final c:Lu8;

.field private final d:Lf9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lu8;

.field private final f:Lu8;

.field private final g:Lu8;

.field private final h:Lu8;

.field private final i:Lu8;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lp9$a;Lu8;Lf9;Lu8;Lu8;Lu8;Lu8;Lu8;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp9$a;",
            "Lu8;",
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lu8;",
            "Lu8;",
            "Lu8;",
            "Lu8;",
            "Lu8;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lp9;->b:Lp9$a;

    .line 4
    iput-object p3, p0, Lp9;->c:Lu8;

    .line 5
    iput-object p4, p0, Lp9;->d:Lf9;

    .line 6
    iput-object p5, p0, Lp9;->e:Lu8;

    .line 7
    iput-object p6, p0, Lp9;->f:Lu8;

    .line 8
    iput-object p7, p0, Lp9;->g:Lu8;

    .line 9
    iput-object p8, p0, Lp9;->h:Lu8;

    .line 10
    iput-object p9, p0, Lp9;->i:Lu8;

    .line 11
    iput-boolean p10, p0, Lp9;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 1

    .line 1
    new-instance v0, Lm7;

    invoke-direct {v0, p1, p2, p0}, Lm7;-><init>(Lcom/airbnb/lottie/g;Lz9;Lp9;)V

    return-object v0
.end method

.method public b()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9;->f:Lu8;

    return-object v0
.end method

.method public c()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9;->h:Lu8;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9;->g:Lu8;

    return-object v0
.end method

.method public f()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9;->i:Lu8;

    return-object v0
.end method

.method public g()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9;->c:Lu8;

    return-object v0
.end method

.method public h()Lf9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp9;->d:Lf9;

    return-object v0
.end method

.method public i()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9;->e:Lu8;

    return-object v0
.end method

.method public j()Lp9$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9;->b:Lp9$a;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp9;->j:Z

    return v0
.end method
