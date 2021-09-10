.class public final synthetic Lko;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje0;


# instance fields
.field public final synthetic a:Loo;


# direct methods
.method public synthetic constructor <init>(Loo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko;->a:Loo;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lko;->a:Loo;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Loo;->p(Ljava/lang/Throwable;)V

    return-void
.end method
