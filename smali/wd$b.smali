.class Lwd$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Llf;

.field final b:Llf;

.field final c:Llf;

.field final d:Llf;

.field final e:Lyd;

.field final f:Lbe$a;

.field final g:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Lxd<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Llf;Llf;Llf;Llf;Lyd;Lbe$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lwd$b$a;

    invoke-direct {v0, p0}, Lwd$b$a;-><init>(Lwd$b;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lil;->a(ILil$b;)Lk2;

    move-result-object v0

    iput-object v0, p0, Lwd$b;->g:Lk2;

    .line 4
    iput-object p1, p0, Lwd$b;->a:Llf;

    .line 5
    iput-object p2, p0, Lwd$b;->b:Llf;

    .line 6
    iput-object p3, p0, Lwd$b;->c:Llf;

    .line 7
    iput-object p4, p0, Lwd$b;->d:Llf;

    .line 8
    iput-object p5, p0, Lwd$b;->e:Lyd;

    .line 9
    iput-object p6, p0, Lwd$b;->f:Lbe$a;

    return-void
.end method
