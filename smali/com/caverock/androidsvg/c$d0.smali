.class public Lcom/caverock/androidsvg/c$d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "d0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/c$d0$a;,
        Lcom/caverock/androidsvg/c$d0$b;,
        Lcom/caverock/androidsvg/c$d0$c;,
        Lcom/caverock/androidsvg/c$d0$d;,
        Lcom/caverock/androidsvg/c$d0$e;,
        Lcom/caverock/androidsvg/c$d0$f;,
        Lcom/caverock/androidsvg/c$d0$g;,
        Lcom/caverock/androidsvg/c$d0$h;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/Boolean;

.field public C:Ljava/lang/Boolean;

.field public D:Lcom/caverock/androidsvg/c$n0;

.field public E:Ljava/lang/Float;

.field public F:Ljava/lang/String;

.field public G:Lcom/caverock/androidsvg/c$d0$a;

.field public H:Ljava/lang/String;

.field public I:Lcom/caverock/androidsvg/c$n0;

.field public J:Ljava/lang/Float;

.field public K:Lcom/caverock/androidsvg/c$n0;

.field public L:Ljava/lang/Float;

.field public M:Lcom/caverock/androidsvg/c$d0$h;

.field public b:J

.field public c:Lcom/caverock/androidsvg/c$n0;

.field public d:Lcom/caverock/androidsvg/c$d0$a;

.field public e:Ljava/lang/Float;

.field public f:Lcom/caverock/androidsvg/c$n0;

.field public g:Ljava/lang/Float;

.field public h:Lcom/caverock/androidsvg/c$o;

.field public i:Lcom/caverock/androidsvg/c$d0$c;

.field public j:Lcom/caverock/androidsvg/c$d0$d;

.field public k:Ljava/lang/Float;

.field public l:[Lcom/caverock/androidsvg/c$o;

.field public m:Lcom/caverock/androidsvg/c$o;

.field public n:Ljava/lang/Float;

.field public o:Lcom/caverock/androidsvg/c$e;

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/caverock/androidsvg/c$o;

.field public r:Ljava/lang/Integer;

.field public s:Lcom/caverock/androidsvg/c$d0$b;

.field public t:Lcom/caverock/androidsvg/c$d0$f;

.field public u:Lcom/caverock/androidsvg/c$d0$g;

.field public v:Lcom/caverock/androidsvg/c$d0$e;

.field public w:Ljava/lang/Boolean;

.field public x:Lcom/caverock/androidsvg/c$b;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/caverock/androidsvg/c$d0;->b:J

    return-void
.end method

.method public static a()Lcom/caverock/androidsvg/c$d0;
    .locals 8

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v0}, Lcom/caverock/androidsvg/c$d0;-><init>()V

    const-wide/16 v1, -0x1

    .line 2
    iput-wide v1, v0, Lcom/caverock/androidsvg/c$d0;->b:J

    .line 3
    sget-object v1, Lcom/caverock/androidsvg/c$e;->c:Lcom/caverock/androidsvg/c$e;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    .line 4
    sget-object v2, Lcom/caverock/androidsvg/c$d0$a;->b:Lcom/caverock/androidsvg/c$d0$a;

    iput-object v2, v0, Lcom/caverock/androidsvg/c$d0;->d:Lcom/caverock/androidsvg/c$d0$a;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->e:Ljava/lang/Float;

    const/4 v5, 0x0

    .line 6
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->f:Lcom/caverock/androidsvg/c$n0;

    .line 7
    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->g:Ljava/lang/Float;

    .line 8
    new-instance v6, Lcom/caverock/androidsvg/c$o;

    invoke-direct {v6, v3}, Lcom/caverock/androidsvg/c$o;-><init>(F)V

    iput-object v6, v0, Lcom/caverock/androidsvg/c$d0;->h:Lcom/caverock/androidsvg/c$o;

    .line 9
    sget-object v3, Lcom/caverock/androidsvg/c$d0$c;->b:Lcom/caverock/androidsvg/c$d0$c;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->i:Lcom/caverock/androidsvg/c$d0$c;

    .line 10
    sget-object v3, Lcom/caverock/androidsvg/c$d0$d;->b:Lcom/caverock/androidsvg/c$d0$d;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->j:Lcom/caverock/androidsvg/c$d0$d;

    const/high16 v3, 0x40800000    # 4.0f

    .line 11
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->k:Ljava/lang/Float;

    .line 12
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->l:[Lcom/caverock/androidsvg/c$o;

    .line 13
    new-instance v3, Lcom/caverock/androidsvg/c$o;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/caverock/androidsvg/c$o;-><init>(F)V

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->m:Lcom/caverock/androidsvg/c$o;

    .line 14
    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->n:Ljava/lang/Float;

    .line 15
    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->o:Lcom/caverock/androidsvg/c$e;

    .line 16
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->p:Ljava/util/List;

    .line 17
    new-instance v3, Lcom/caverock/androidsvg/c$o;

    sget-object v6, Lcom/caverock/androidsvg/c$c1;->h:Lcom/caverock/androidsvg/c$c1;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-direct {v3, v7, v6}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->q:Lcom/caverock/androidsvg/c$o;

    const/16 v3, 0x190

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    .line 19
    sget-object v3, Lcom/caverock/androidsvg/c$d0$b;->b:Lcom/caverock/androidsvg/c$d0$b;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->s:Lcom/caverock/androidsvg/c$d0$b;

    .line 20
    sget-object v3, Lcom/caverock/androidsvg/c$d0$f;->b:Lcom/caverock/androidsvg/c$d0$f;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->t:Lcom/caverock/androidsvg/c$d0$f;

    .line 21
    sget-object v3, Lcom/caverock/androidsvg/c$d0$g;->b:Lcom/caverock/androidsvg/c$d0$g;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->u:Lcom/caverock/androidsvg/c$d0$g;

    .line 22
    sget-object v3, Lcom/caverock/androidsvg/c$d0$e;->b:Lcom/caverock/androidsvg/c$d0$e;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->v:Lcom/caverock/androidsvg/c$d0$e;

    .line 23
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    .line 24
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->x:Lcom/caverock/androidsvg/c$b;

    .line 25
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->y:Ljava/lang/String;

    .line 26
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->z:Ljava/lang/String;

    .line 27
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->A:Ljava/lang/String;

    .line 28
    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->B:Ljava/lang/Boolean;

    .line 29
    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->C:Ljava/lang/Boolean;

    .line 30
    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->D:Lcom/caverock/androidsvg/c$n0;

    .line 31
    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->E:Ljava/lang/Float;

    .line 32
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->F:Ljava/lang/String;

    .line 33
    iput-object v2, v0, Lcom/caverock/androidsvg/c$d0;->G:Lcom/caverock/androidsvg/c$d0$a;

    .line 34
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    .line 35
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->I:Lcom/caverock/androidsvg/c$n0;

    .line 36
    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->J:Ljava/lang/Float;

    .line 37
    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->K:Lcom/caverock/androidsvg/c$n0;

    .line 38
    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->L:Ljava/lang/Float;

    .line 39
    sget-object v1, Lcom/caverock/androidsvg/c$d0$h;->b:Lcom/caverock/androidsvg/c$d0$h;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->M:Lcom/caverock/androidsvg/c$d0$h;

    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$d0;

    .line 2
    iget-object v1, p0, Lcom/caverock/androidsvg/c$d0;->l:[Lcom/caverock/androidsvg/c$o;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, [Lcom/caverock/androidsvg/c$o;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/caverock/androidsvg/c$o;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->l:[Lcom/caverock/androidsvg/c$o;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
