.class Lna0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lna0;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lna0;


# direct methods
.method constructor <init>(Lna0;)V
    .locals 0

    iput-object p1, p0, Lna0$a;->b:Lna0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lna0$a;->b:Lna0;

    invoke-static {v0}, Lna0;->a(Lna0;)Lva0;

    move-result-object v0

    invoke-virtual {v0}, Lva0;->a()V

    return-void
.end method
