.class Lf2$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lf2$b;


# direct methods
.method constructor <init>(Lf2$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2$b$a;->c:Lf2$b;

    iput-object p2, p0, Lf2$b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2$b$a;->c:Lf2$b;

    iget-object v0, v0, Lf2$b;->d:Lf2$d;

    iget-object v1, p0, Lf2$b$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lf2$d;->a(Ljava/lang/Object;)V

    return-void
.end method
