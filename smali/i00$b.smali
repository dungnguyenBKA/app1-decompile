.class Li00$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li00;->k(Ll30;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ll30;

.field final synthetic c:Li00;


# direct methods
.method constructor <init>(Li00;Ll30;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li00$b;->c:Li00;

    iput-object p2, p0, Li00$b;->b:Ll30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li00$b;->c:Li00;

    iget-object v1, p0, Li00$b;->b:Ll30;

    invoke-static {v0, v1}, Li00;->a(Li00;Ll30;)Lkw;

    return-void
.end method
