.class final Lkf$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lil$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final b:Ljava/security/MessageDigest;

.field private final c:Lll;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lll;->a()Lll;

    move-result-object v0

    iput-object v0, p0, Lkf$b;->c:Lll;

    .line 3
    iput-object p1, p0, Lkf$b;->b:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public b()Lll;
    .locals 1

    .line 1
    iget-object v0, p0, Lkf$b;->c:Lll;

    return-object v0
.end method
