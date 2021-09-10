.class final Lye0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final b:Lye0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye0$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lye0;


# direct methods
.method constructor <init>(Lye0;Lye0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye0$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lye0$b;->c:Lye0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lye0$b;->b:Lye0$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lye0$b;->c:Lye0;

    iget-object v0, v0, Lue0;->a:Ltd0;

    iget-object v1, p0, Lye0$b;->b:Lye0$a;

    invoke-virtual {v0, v1}, Ltd0;->c(Lwd0;)V

    return-void
.end method
