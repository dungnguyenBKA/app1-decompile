.class Lmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lld;


# direct methods
.method constructor <init>(Lld;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmd;->b:Lld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmd;->b:Lld;

    invoke-virtual {v0}, Lld;->b()V

    const/4 v0, 0x0

    throw v0
.end method
