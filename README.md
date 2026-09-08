# Jet AI — "Ask Anything. In Any Language."

<div align="center">
  <h3>Modern Multilingual AI Assistant</h3>
  <p>Engineered for high speed and precision with dedicated support for English and Indian regional languages.</p>
</div>

---

## 🚀 Overview

**Jet AI** is a complete, production-ready multilingual artificial intelligence web application designed for users worldwide. Inspired by hypersonic flight dynamics and clean aerodynamic interfaces, Jet AI provides seamless, low-latency conversational AI with deep, authentic support for 13 global and Indian languages.

Jet AI is built with an original visual identity ("flight + intelligence"), featuring custom typography, a subtle star/jet flight motif, light/dark/system themes, real-time streaming tokens, voice synthesis, multi-modal file ingestion, and Row Level Security (RLS) isolation.

---

## 🌟 Key Features

1. **Hypersonic Streaming Chat**: Instantaneous token generation via Server-Sent Events (SSE) and ReadableStream pipelines.
2. **First-Class Multilingual Engine**: Native script parsing and generation across **13 languages**:
   - **English** (`en`)
   - **Telugu** (`te` - తెలుగు)
   - **Hindi** (`hi` - हिन्दी)
   - **Tamil** (`ta` - தமிழ்)
   - **Kannada** (`kn` - ಕನ್ನಡ)
   - **Malayalam** (`ml` - മലയാളം)
   - **Marathi** (`mr` - मराठी)
   - **Bengali** (`bn` - বাংলা)
   - **Gujarati** (`gu` - ગુજરાતી)
   - **Punjabi** (`pa` - ਪੰਜਾਬੀ)
   - **Odia** (`or` - ଓଡ଼ିଆ)
   - **Assamese** (`as` - অসমীয়া)
   - **Urdu** (`ur` - اردو)
3. **Automatic Language Detection**: Heuristic Unicode script detector that auto-adapts responses to the user's language without lossy translation hops.
4. **Interactive Chat Capabilities**:
   - Multiline auto-expanding composer (Enter to send, Shift+Enter for newline)
   - Response regeneration, copy response, and formatted response sharing
   - Like / Dislike rating feedback collection
5. **Voice Interface (STT & TTS)**:
   - Microphone voice transcription (Speech-to-Text) with real-time waveform pulse and permission error handling
   - Text-to-Speech audio synthesis with native regional accents
6. **Multimodal File & Document Processing**:
   - Document text extraction for **PDF**, **TXT**, and **Word (DOCX)**
   - High-fidelity **image attachments** (PNG, JPG, JPEG, WEBP) with base64 visual previews
   - 25MB file validation and private Supabase storage bucket integration
7. **Grounded Web Search**:
   - Server-side web search abstraction (Tavily, Brave Search, or domain-grounded search)
   - Non-hallucinatory citations with verified source cards (Title, Domain, Snippet, Open Source link)
8. **Extensible Tool Registry**:
   - Modular tools: `webSearch`, `calculator`, `documentSearch`, `memorySearch`, `translation`
9. **Long-Term Memory & Privacy Controls**:
   - User-controlled memory toggle (ON/OFF)
   - Inspect memories, delete individual facts, or purge all records
   - Strict Privacy Mode disabling tracking and temporary caches
10. **Database & Enterprise Security**:
    - Supabase PostgreSQL with complete Row Level Security (RLS) ensuring strict tenant isolation
    - Zero client exposure of AI secrets or service-role keys
11. **Responsive Desktop & Mobile Layouts**:
    - Desktop: Collapsible sidebar, search filter, conversation management, settings link
    - Mobile: Compact header with slide-out drawer navigation
12. **Complete Marketing & Legal Suite**:
    - Landing page with interactive hero input and language chips
    - About Page (`/about`), Privacy Policy (`/privacy`), Terms of Service (`/terms`)

---

## 🛠️ Technology Stack

- **Framework**: [Next.js 14](https://nextjs.org/) (App Router, Server Components & Route Handlers)
- **Language**: [TypeScript](https://www.typescriptlang.org/) (Strict Mode)
- **Styling**: [Tailwind CSS](https://tailwindcss.com/) with CSS Custom Properties and design tokens
- **Icons**: [Lucide React](https://lucide.dev/)
- **Database & Auth**: [Supabase](https://supabase.com/) (PostgreSQL with RLS, Auth, Storage)
- **Markdown & Code**: `react-markdown`, `remark-gfm`
- **Voice**: Web Speech API (`SpeechRecognition` & `speechSynthesis`)

---

## 📂 Project Structure

```
Jet AI/
├── app/
│   ├── (auth)/
│   │   ├── login/page.tsx               # User sign in
│   │   ├── signup/page.tsx              # User registration
│   │   └── forgot-password/page.tsx     # Password recovery
│   ├── (dashboard)/
│   │   ├── chat/
│   │   │   ├── page.tsx                 # New chat workstation
│   │   │   └── [id]/page.tsx            # Conversation session
│   │   └── settings/page.tsx            # Settings & memory panel
│   ├── (marketing)/
│   │   ├── about/page.tsx               # Product overview
│   │   ├── privacy/page.tsx             # Data privacy & RLS policy
│   │   └── terms/page.tsx               # Terms of service
│   ├── api/
│   │   ├── chat/route.ts                # Real-time SSE streaming API
│   │   ├── conversations/route.ts       # Conversations list & create
│   │   ├── conversations/[id]/route.ts  # Rename & delete conversations
│   │   ├── files/route.ts               # File upload & document extraction
│   │   ├── feedback/route.ts            # Like/dislike feedback submission
│   │   ├── memory/route.ts              # Long-term memory management
│   │   └── search/route.ts              # Normalized web search endpoint
│   ├── globals.css                      # Theme tokens & typography
│   ├── layout.tsx                       # Root layout & ThemeProvider
│   └── page.tsx                         # High-converting Landing page
├── components/
│   ├── brand/
│   │   └── JetAiLogo.tsx                # Original flight wordmark logo
│   ├── chat/
│   │   ├── ChatContainer.tsx            # State coordinator & streaming loop
│   │   ├── ChatSidebar.tsx              # Sidebar, search & rename/delete dialogs
│   │   ├── ChatHeader.tsx               # Header, theme toggle, mobile trigger
│   │   ├── MessageList.tsx              # Message feed & empty prompt starters
│   │   ├── MessageBubble.tsx            # AI & User bubbles + action toolbar
│   │   ├── ChatComposer.tsx             # Multiline input, voice, attachments
│   │   ├── MarkdownRenderer.tsx         # Headings, tables, lists, code
│   │   ├── CodeBlock.tsx                # Syntax highlighting & copy button
│   │   ├── SourceCards.tsx              # Grounded search citation cards
│   │   ├── LanguageSelector.tsx         # 13 languages selector dropdown
│   │   ├── VoiceButton.tsx              # Speech-to-text recording button
│   │   └── AttachmentPreview.tsx        # Previews for PDF, DOCX, and images
│   ├── landing/
│   │   ├── LandingNavbar.tsx            # Marketing header with theme toggle
│   │   ├── HeroChatInput.tsx            # Interactive hero prompt box
│   │   ├── LanguageChips.tsx            # Native Indic & English chips
│   │   └── FeatureCards.tsx             # High-impact feature cards
│   ├── shared/
│   │   └── ThemeProvider.tsx            # Light, dark, system theme provider
│   └── ui/                              # Button, Input, Textarea, Card, Dialog, Switch
├── lib/
│   ├── ai/
│   │   ├── provider.ts                  # Pluggable AI provider interface
│   │   ├── gemini-provider.ts           # Google Gemini 1.5 streaming provider
│   │   ├── openai-provider.ts           # OpenAI GPT-4o streaming provider
│   │   ├── mock-provider.ts             # Smart multilingual fallback engine
│   │   ├── factory.ts                   # Provider factory & key auto-detection
│   │   └── system-prompt.ts             # Configurable Jet AI system instruction
│   ├── files/
│   │   ├── validator.ts                 # 25MB validation & allowed formats
│   │   └── parser.ts                    # PDF, TXT, DOCX text extraction
│   ├── languages/
│   │   ├── config.ts                    # 13 languages registry & scripts
│   │   └── detector.ts                  # Heuristic Unicode language detector
│   ├── search/
│   │   └── web-search.ts                # Normalized search abstraction
│   ├── supabase/
│   │   ├── client.ts                    # Browser client
│   │   ├── server.ts                    # Route handler cookie client
│   │   └── mock-store.ts                # Local storage & demo state fallback
│   ├── tools/
│   │   └── registry.ts                  # Extensible tool system
│   ├── voice/
│   │   ├── stt.ts                       # SpeechRecognition STT engine
│   │   └── tts.ts                       # SpeechSynthesis TTS engine
│   └── utils.ts                         # Formatting and CSS class merges
├── supabase/
│   ├── migrations/
│   │   └── 20260906000000_jetai_schema.sql # Complete PostgreSQL schema & RLS
│   └── seed.sql                         # Multilingual demo seed data
├── tests/
│   └── run-tests.js                     # Unit & integration verification suite
├── .env.example                         # Environment template
├── package.json                         # Dependencies & project scripts
└── tsconfig.json                        # Strict TypeScript configuration
```

---

## ⚙️ Prerequisites

- **Node.js**: `v18.17.0` or later (Tested on `v24.19.0 LTS`)
- **npm** or **pnpm**
- *(Optional)* Supabase Account & Google Gemini API Key

---

## ⚡ Quick Start & Local Development

### 1. Install Dependencies
```bash
npm install
```

### 2. Configure Environment Variables
Copy `.env.example` to `.env.local`:
```bash
cp .env.example .env.local
```
*(Note: Jet AI runs in **Offline / Local Demo Mode** immediately out of the box if external keys are left blank!)*

### 3. Run Automated Verification Tests
```bash
npm test
```

### 4. Start Development Server
```bash
npm run dev
```
Open [http://localhost:3000](http://localhost:3000) in your browser.

---

## 🗄️ Database & Supabase Setup

### 1. Execute Database Migration
Open your Supabase Project SQL Editor and execute:
```sql
-- Located in supabase/migrations/20260906000000_jetai_schema.sql
```
This automatically sets up:
- Tables: `profiles`, `conversations`, `messages`, `files`, `user_preferences`, `memories`, `feedback`, `usage`
- Cryptographic Row Level Security (RLS) policies
- Storage bucket `jetai-files` (25MB limit with secure access)
- Auto-profile trigger on new user sign-up

### 2. Load Seed Data (Optional for Development)
```sql
-- Located in supabase/seed.sql
```
Loads sample conversations in Telugu, Hindi, and English along with sample preferences and memories.

### 3. Configure Supabase Credentials
In `.env.local`:
```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=your-publishable-anon-key
SUPABASE_SERVICE_ROLE_KEY=your-service-role-key
```

---

## 🤖 AI Provider Setup

Jet AI supports changing the model provider without modifying application code:

### Google Gemini (Recommended)
```env
AI_PROVIDER=gemini
AI_API_KEY=your_gemini_api_key
```

### OpenAI
```env
AI_PROVIDER=openai
AI_API_KEY=your_openai_api_key
```

### Smart Local Engine (Zero-Config Default)
Leave `AI_API_KEY` blank. Jet AI will automatically invoke `MockAIProvider`, delivering authentic multilingual responses across all 13 Indian & global languages with code blocks, math derivations, and citation structures.

---

## 🔍 Grounded Search Setup

To enable live external web citations:
```env
# Tavily API (https://tavily.com)
SEARCH_API_KEY=tvly-your-key

# Or Brave Search API
SEARCH_API_KEY=BSA-your-key
```

---

## 🔒 Security Best Practices

- **Strict Server Secret Isolation**: All AI and Search provider keys are kept strictly on the server (`app/api/`) and never exposed to the client or browser bundle.
- **Row Level Security**: Supabase policies mandate `auth.uid() = user_id` for all CRUD operations.
- **Input Validation**: Strict file type validation and size caps (25MB) prevent malicious payload ingestion.

---

## 🚢 Production Deployment

To build and run in production:
```bash
npm run build
npm run start
```
Jet AI is optimized for one-click deployment on **Vercel**, **Railway**, or **Docker**.

---

<div align="center">
  <p><strong>Jet AI</strong> — <em>Ask Anything. In Any Language.</em></p>
</div>
