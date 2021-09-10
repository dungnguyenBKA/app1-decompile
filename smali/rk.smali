.class public Lrk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lsk<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final a:Lrk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrk<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Ltk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltk<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    sput-object v0, Lrk;->a:Lrk;

    .line 2
    new-instance v0, Lrk$a;

    invoke-direct {v0}, Lrk$a;-><init>()V

    sput-object v0, Lrk;->b:Ltk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ltk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Ltk<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrk;->b:Ltk;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lsk$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
