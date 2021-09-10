.class final synthetic Lwt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llv$a;


# instance fields
.field private final a:Lxt;

.field private final b:Lit;

.field private final c:Let;


# direct methods
.method private constructor <init>(Lxt;Lit;Let;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwt;->a:Lxt;

    iput-object p2, p0, Lwt;->b:Lit;

    iput-object p3, p0, Lwt;->c:Let;

    return-void
.end method

.method public static a(Lxt;Lit;Let;)Llv$a;
    .locals 1

    new-instance v0, Lwt;

    invoke-direct {v0, p0, p1, p2}, Lwt;-><init>(Lxt;Lit;Let;)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lwt;->a:Lxt;

    iget-object v1, p0, Lwt;->b:Lit;

    iget-object v2, p0, Lwt;->c:Let;

    invoke-static {v0, v1, v2}, Lxt;->b(Lxt;Lit;Let;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
